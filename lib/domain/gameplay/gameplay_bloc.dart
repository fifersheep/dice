import 'package:bloc/bloc.dart';
import 'package:dice/data/model/game.dart';
import 'package:dice/data/network/gameplay_repository.dart';

import 'gameplay_event.dart';
import 'gameplay_state.dart';

class GameplayBloc extends Bloc<GameplayEvent, GameplayState> {
  GameplayBloc() : super(GameplayState.loading());

  final repository = FirebaseGameplayRepository();

  @override
  Stream<GameplayState> mapEventToState(GameplayEvent event) async* {
    final game = await repository.getGame(event.gameId);

    if (game == null) {
      yield GameplayState.error();
    } else if (game.status == GameStatus.Created) {
      yield GameplayState.inLobby(
          gameName: game.name, participants: ['participant']);
    } else if (game.status == GameStatus.Started) {
      yield GameplayState.inPlay(
          gameName: game.name, participants: ['participant']);
    }
  }
}
