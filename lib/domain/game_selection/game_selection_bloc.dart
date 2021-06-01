import 'package:bloc/bloc.dart';
import 'package:dice/data/network/game_selection_repository.dart';
import 'package:dice/domain/game_selection/game_selection_event.dart';
import 'package:dice/domain/game_selection/game_selection_state.dart';

class GameSelectionBloc extends Bloc<GameSelectionEvent, GameSelectionState> {
  GameSelectionBloc()
      : super(GameSelectionState(
          gameTitle: "",
          isGameTitleValid: false,
        ));

  final repository = FirebaseGameSelectionRepository();

  @override
  Stream<GameSelectionState> mapEventToState(GameSelectionEvent event) async* {
    if (event is GameTitleChanged) {
      yield GameSelectionState(
          gameTitle: event.gameTitle,
          isGameTitleValid: event.gameTitle.length > 5);
    } else if (event is CreateGamePressed) {
      final game = await repository.createGame(event.gameTitle);
    }
  }
}
