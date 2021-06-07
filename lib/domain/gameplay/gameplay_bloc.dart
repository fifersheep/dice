import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dice/data/model/participant.dart';
import 'package:dice/data/model/player.dart';
import 'package:dice/data/network/players_repository.dart';
import 'package:stream_transform/stream_transform.dart';
import 'package:dice/data/model/game.dart';
import 'package:dice/data/network/games_repository.dart';
import 'package:dice/data/network/participants_repository.dart';

import 'gameplay_event.dart';
import 'gameplay_state.dart';

class GameplayBloc extends Bloc<GameplayEvent, GameplayState> {
  GameplayBloc() : super(GameplayState.loading());

  final _gameplayRepository = FirebaseGamesRepository();
  final _participantsRepository = FirebaseParticipantsRepository();
  final _playersRepository = FirebasePlayersRepository();

  StreamSubscription? _subscription;

  @override
  void onEvent(GameplayEvent event) {
    if (event is GameplayJoined) {
      _subscription?.cancel();

      final gameStream = _gameplayRepository.gameStream(event.gameId);
      final participantsStream =
          _participantsRepository.getParticipants(event.gameId);

      _subscription = gameStream
          .combineLatest<List<ParticipatingPlayer?>, Gameplay>(
            participantsStream
                .asyncMap((participants) async => _players(participants)),
            (game, participatingPlayers) => Gameplay(game,
                participatingPlayers.whereType<ParticipatingPlayer>().toList()),
          )
          .listen((gameplay) => add(GameplayEvent.gameplayUpdated(gameplay)));
    }
    super.onEvent(event);
  }

  @override
  Stream<GameplayState> mapEventToState(GameplayEvent event) async* {
    if (event is GameplayUpdated) {
      final game = event.gameplay.game;
      final participatingPlayers = event.gameplay.participatingPlayers;
      if (game?.status == GameStatus.Created) {
        yield GameplayState.inLobby(
            gameName: game!.name,
            participants: participatingPlayers
                .map((participatingPlayer) => LobbyParticipantInfo(
                      participatingPlayer.player.name,
                      participatingPlayer.participant.ready,
                    ))
                .toList());
      } else if (game?.status == GameStatus.Started) {
        yield GameplayState.inPlay(
            gameName: game!.name, participatingPlayers: participatingPlayers);
      }
    }
  }

  @override
  Future<void> close() {
    _subscription?.cancel();
    return super.close();
  }

  Future<List<ParticipatingPlayer?>> _players(
      List<Participant> participants) async {
    final futures = participants.map((participant) => _player(participant));
    return Future.wait(futures);
  }

  Future<ParticipatingPlayer?> _player(Participant participant) async {
    final player = await _playersRepository.getPlayer(participant.playerId);
    return player != null ? ParticipatingPlayer(player, participant) : null;
  }
}

class ParticipatingPlayer {
  final Player player;
  final Participant participant;

  ParticipatingPlayer(this.player, this.participant);
}

class Gameplay {
  final Game? game;
  final List<ParticipatingPlayer> participatingPlayers;

  Gameplay(this.game, this.participatingPlayers);
}
