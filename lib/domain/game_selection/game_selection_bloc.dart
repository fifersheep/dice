import 'package:bloc/bloc.dart';
import 'package:dice/data/model/game.dart';
import 'package:dice/data/network/game_selection_repository.dart';
import 'package:dice/domain/game_selection/game_selection_event.dart';
import 'package:dice/domain/game_selection/game_selection_state.dart';

class GameSelectionBloc extends Bloc<GameSelectionEvent, GameSelectionState> {
  GameSelectionBloc()
      : super(GameSelectionState.nameChange(
          gameName: "",
          validation: GameSelectionValidation.Invalid,
        ));

  final repository = FirebaseGameSelectionRepository();

  @override
  Stream<GameSelectionState> mapEventToState(GameSelectionEvent event) async* {
    if (event is GameNameChanged) {
      if (event.gameName.length < 5) {
        yield GameSelectionState.nameChange(
          gameName: event.gameName,
          validation: GameSelectionValidation.Invalid,
        );
      } else {
        yield GameSelectionState.nameChange(
          gameName: event.gameName,
          validation: GameSelectionValidation.Awaiting,
        );
        final game = await repository.getGame(event.gameName);
        if (game != null) {
          final validation = game.status == GameStatus.Created
              ? GameSelectionValidation.Joinable
              : GameSelectionValidation.Unjoinable;
          yield GameSelectionState.nameChange(
            gameName: event.gameName,
            validation: validation,
          );
        } else {
          yield GameSelectionState.nameChange(
            gameName: event.gameName,
            validation: GameSelectionValidation.Available,
          );
        }
      }
    } else if (event is CreateGamePressed) {
      final game = await repository.createGame(event.gameName);
      if (game != null) {
        yield GameSelectionState.gameSelected(game.id);
      }
    } else if (event is JoinGamePressed) {
      final game = await repository.getGame(event.gameName);
      if (game != null) {
        yield GameSelectionState.gameSelected(game.id);
      }
    }
  }
}
