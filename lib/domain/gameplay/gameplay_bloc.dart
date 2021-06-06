import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dice/data/model/participant.dart';
import 'package:stream_transform/stream_transform.dart';
import 'package:dice/data/model/game.dart';
import 'package:dice/data/network/gameplay_repository.dart';
import 'package:dice/data/network/participants_repository.dart';

import 'gameplay_event.dart';
import 'gameplay_state.dart';

class GameplayBloc extends Bloc<GameplayEvent, GameplayState> {
  GameplayBloc() : super(GameplayState.loading());

  final _gameplayRepository = FirebaseGameplayRepository();
  final _participantsRepository = FirebaseParticipantsRepository();

  StreamSubscription? _subscription;

  @override
  void onEvent(GameplayEvent event) {
    if (event is GameplayJoined) {
      _subscription?.cancel();

      final gameStream =
          _gameplayRepository.getGame(event.gameId).asBroadcastStream();
      final participantsStream = _participantsRepository
          .getParticipants(event.gameId)
          .asBroadcastStream();

      gameStream.listen((element) {
        print(element);
      });

      participantsStream.listen((element) {
        print(element);
      });

      _subscription = gameStream
          .combineLatest<List<Participant>, Gameplay>(
            participantsStream,
            (game, participants) => Gameplay(game, participants),
          )
          .listen((gameplay) => add(GameplayEvent.gameplayUpdated(gameplay)));
    }
    super.onEvent(event);
  }

  @override
  Stream<GameplayState> mapEventToState(GameplayEvent event) async* {
    if (event is GameplayUpdated) {
      final game = event.gameplay.game;
      final participants =
          event.gameplay.participants.map((e) => e.playerId).toList();
      if (game?.status == GameStatus.Created) {
        yield GameplayState.inLobby(
            gameName: game!.name,
            participants: event.gameplay.participants
                .map((e) => LobbyParticipantInfo(e.playerId, e.ready))
                .toList());
      } else if (game?.status == GameStatus.Started) {
        yield GameplayState.inPlay(
            gameName: game!.name, participants: participants);
      }
    }
  }

  @override
  Future<void> close() {
    _subscription?.cancel();
    return super.close();
  }
}

class Gameplay {
  final Game? game;
  final List<Participant> participants;

  Gameplay(this.game, this.participants);
}
