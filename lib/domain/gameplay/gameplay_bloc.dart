import 'dart:async';
import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:collection/collection.dart';
import 'package:dice/data/local/current_player.dart';
import 'package:dice/data/local/shared_prefs.dart';
import 'package:dice/data/model/participation.dart';
import 'package:dice/data/model/player.dart';
import 'package:dice/data/network/players_repository.dart';
import 'package:dice/data/network/response.dart';
import 'package:lazy_evaluation/lazy_evaluation.dart';
import 'package:stream_transform/stream_transform.dart';
import 'package:dice/data/model/game.dart';
import 'package:dice/data/network/games_repository.dart';
import 'package:dice/data/network/participations_repository.dart';

import 'gameplay_event.dart';
import 'gameplay_state.dart';

class GameplayBloc extends Bloc<GameplayEvent, GameplayState> {
  GameplayBloc() : super(const GameplayState.loading()) {
    on<GameplayJoined>(_onGameplayJoined);
    on<ReadyTapped>(_onReadyTapped);
    on<GameplayUpdated>(_onGameplayUpdated);
  }

  final _gameplayRepository = GamesRepository();
  final _participationsRepository = ParticipationsRepository();
  final _playersRepository = PlayersRepository();

  StreamSubscription? _subscription;

  int? _currentPlayerId;

  final Lazy<Future<CurrentPlayer?>> _currentPlayer = Lazy(() => SharedPrefs.getCurrentPlayer());

  void _onGameplayJoined(GameplayJoined event, Emitter<GameplayState> emit) async {
    _subscription?.cancel();

    final currentPlayer = await _currentPlayer.value;
    if (currentPlayer != null && !currentPlayer.gameParticipationCupIds.containsKey(event.gameId)) {
      final uniqueId = await _participationsRepository.addParticipation(event.gameId, currentPlayer.id);
      await SharedPrefs.storeUniqueId(event.gameId, currentPlayer.id, uniqueId);
    }

    final gameStream = _gameplayRepository.gameStream(event.gameId);
    final participationsStream = _participationsRepository.getParticipations(event.gameId);

    _subscription = gameStream
        .combineLatest<List<ParticipatingPlayer?>, GameplayModel>(
          participationsStream.asyncMap((participations) async => _players(participations)),
          (game, participatingPlayers) =>
              GameplayModel(game, participatingPlayers.whereType<ParticipatingPlayer>().toList()),
        )
        .listen((gameplay) => add(GameplayEvent.gameplayUpdated(gameplay)));
  }

  void _onReadyTapped(ReadyTapped event, Emitter<GameplayState> emit) {
    if (state is GameInLobby) {
      final currentPlayerId = _currentPlayerId;
      if (currentPlayerId != null) {
        final currentState = (state as GameInLobby);
        final currentParticipatingPlayer = currentState.participatingPlayers
            .firstWhere((participatingPlayer) => participatingPlayer.player.id == currentPlayerId);
        _participationsRepository.setParticipationReady(
          currentParticipatingPlayer.participation.gameId,
          currentParticipatingPlayer.participation.playerId,
          !currentState.currentPlayerReady,
        );
      }
    }
  }

  void _onGameplayUpdated(GameplayUpdated event, Emitter<GameplayState> emit) async {
    final currentPlayerId = await _getCurrentPlayerId();
    if (currentPlayerId != null) {
      final game = event.gameplay.game;
      if (game?.status == GameStatus.created) {
        await _createdState(event, currentPlayerId, emit);
      } else if (game?.status == GameStatus.inPlay) {
        await _inPlayState(event, currentPlayerId, emit);
      }
    }
  }

  Future<void> _createdState(GameplayUpdated event, int currentPlayerId, Emitter<GameplayState> emit) async {
    final game = event.gameplay.game;
    final participatingPlayers = event.gameplay.participatingPlayers;
    emit(GameplayState.inLobby(
        currentPlayerReady: participatingPlayers
            .firstWhere((pp) => pp.participation.playerId == currentPlayerId)
            .participation
            .playerReady,
        gameName: game!.name,
        participatingPlayers: participatingPlayers,
        loading: participatingPlayers.length > 1 && participatingPlayers.every((pp) => pp.participation.playerReady)));
  }

  Future<void> _inPlayState(GameplayUpdated event, int currentPlayerId, Emitter<GameplayState> emit) async {
    final game = event.gameplay.game;
    final participatingPlayers = event.gameplay.participatingPlayers;
    final currentPlayerIndex = participatingPlayers.indexWhere((element) => element.player.id == currentPlayerId);
    final orderedParticipatingPlayers = participatingPlayers.sublist(currentPlayerIndex)
      ..addAll(participatingPlayers.sublist(0, currentPlayerIndex));
    final slots = _participationSlots(orderedParticipatingPlayers, game?.currentPlayerId);

    final List<GameInPlayParticipation> leftSegment = [
      slots.firstWhereOrNull((el) => el.slot == ParticipationSlot.topLeft),
      slots.firstWhereOrNull((el) => el.slot == ParticipationSlot.bottomLeft),
    ].whereNotNull().toList();

    final List<GameInPlayParticipation> rightSegment = [
      slots.firstWhereOrNull((el) => el.slot == ParticipationSlot.topRight),
      slots.firstWhereOrNull((el) => el.slot == ParticipationSlot.bottomRight),
    ].whereNotNull().toList();

    final currentPlayer = await _currentPlayer.value;
    final uniqueId = currentPlayer!.gameParticipationCupIds[game?.id];
    final diceResponse = await _participationsRepository.getDice(uniqueId!);
    final int totalDiceCount = slots.fold(0, (prev, element) => prev + element.diceQuantity);
    final int? highestBetQuantity = slots.fold(null, (prev, element) {
      final betQuantity = element.betQuantity;
      if (betQuantity == null) {
        return prev;
      }

      if (prev == null) {
        return betQuantity;
      }

      return max(prev, betQuantity);
    });
    if (diceResponse is Success<List<int>>) {
      emit(GameplayState.inPlay(
        currentPlayerId: currentPlayerId,
        gameId: game!.id,
        gameName: game.name,
        leftParticipations: leftSegment,
        rightParticipations: rightSegment,
        opposingParticipation: slots.firstWhereOrNull((el) => el.slot == ParticipationSlot.top),
        currentParticipation: slots.firstWhere((el) => el.slot == ParticipationSlot.bottom),
        currentParticipationDice: diceResponse.data.join(", "),
        numberOfDice: totalDiceCount,
        highestBetQuantity: highestBetQuantity,
      ));
    }
  }

  String _bet(int? betQuantity, int? betValue) {
    if (betQuantity != null && betValue != null) {
      return '$betQuantity - ${betValue}s';
    } else {
      return '-';
    }
  }

  List<GameInPlayParticipation> _participationSlots(
          List<ParticipatingPlayer> orderedParticipations, int? gameCurrentPlayerId) =>
      orderedParticipations
          .asMap()
          .entries
          .map((pp) => GameInPlayParticipation(
                pp.value.player.name,
                _bet(pp.value.participation.betQuantity, pp.value.participation.betValue),
                pp.value.participation.betQuantity,
                pp.value.participation.diceQuantity ?? 0,
                _slotForParticipation(pp.key, orderedParticipations.length),
                pp.value.player.id == gameCurrentPlayerId,
              ))
          .toList();

  ParticipationSlot _slotForParticipation(int i, int n) {
    if (i == 0) {
      return ParticipationSlot.bottom;
    } else if (n > 2 && i == (n - 1)) {
      return ParticipationSlot.bottomRight;
    } else if (n > 2 && i == 1) {
      return ParticipationSlot.bottomLeft;
    } else if (n > 4 && i == 2) {
      return ParticipationSlot.topLeft;
    } else if (n > 4 && i == (n - 2)) {
      return ParticipationSlot.topRight;
    } else {
      return ParticipationSlot.top;
    }
  }

  @override
  Future<void> close() {
    _subscription?.cancel();
    return super.close();
  }

  Future<List<ParticipatingPlayer?>> _players(List<Participation> participations) async {
    final futures = participations.map((participation) => _player(participation));
    return Future.wait(futures);
  }

  Future<ParticipatingPlayer?> _player(Participation participation) async {
    final player = await _playersRepository.getPlayer(participation.playerId);
    return player != null ? ParticipatingPlayer(player, participation) : null;
  }

  Future<int?> _getCurrentPlayerId() async {
    _currentPlayerId ??= await SharedPrefs.getCurrentPlayer().then((currentPlayer) => currentPlayer?.id);
    return _currentPlayerId;
  }
}

class ParticipatingPlayer {
  final Player player;
  final Participation participation;

  ParticipatingPlayer(this.player, this.participation);
}

enum ParticipationSlot { bottomLeft, topLeft, top, topRight, bottomRight, bottom }

class GameInPlayParticipation {
  final String name;
  final String bet;
  final int? betQuantity;
  final int diceQuantity;
  final ParticipationSlot slot;
  final bool isActive;

  GameInPlayParticipation(this.name, this.bet, this.betQuantity, this.diceQuantity, this.slot, this.isActive);
}

class GameplayModel {
  final Game? game;
  final List<ParticipatingPlayer> participatingPlayers;

  GameplayModel(this.game, this.participatingPlayers);
}
