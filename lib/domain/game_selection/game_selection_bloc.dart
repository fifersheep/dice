import 'package:bloc/bloc.dart';
import 'package:dice/domain/game_selection/game_selection_event.dart';
import 'package:dice/domain/game_selection/game_selection_state.dart';

class GameSelectionBloc extends Bloc<GameSelectionEvent, GameSelectionState> {
  GameSelectionBloc()
      : super(GameSelectionState(
          gameTitle: "",
          isGameTitleValid: false,
        ));

  @override
  Stream<GameSelectionState> mapEventToState(GameSelectionEvent event) async* {
    if (event is GameTitleChanged) {
      yield GameSelectionState(
          gameTitle: event.gameTitle,
          isGameTitleValid: event.gameTitle.length > 5);
    }
  }
}
