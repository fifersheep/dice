import 'package:bloc/bloc.dart';
import 'package:dice/data/model/game.dart';
import 'package:dice/data/network/games_repository.dart';
import 'package:dice/domain/game_selection/game_selection_event.dart';
import 'package:dice/domain/game_selection/game_selection_state.dart';

class GameSelectionBloc extends Bloc<GameSelectionEvent, GameSelectionState> {
  GameSelectionBloc()
      : super(const GameSelectionState.nameChange(
          gameName: "",
          validation: GameSelectionValidation.invalid,
        )) {
    on<GameNameChanged>(_onGameNameChanged);
    on<CreateGamePressed>(_onCreateGamePressed);
    on<JoinGamePressed>(_onJoinGamePressed);
  }

  final repository = GamesRepository();

  void _onGameNameChanged(GameNameChanged event, Emitter<GameSelectionState> emit) async {
    if (event.gameName.length < 5) {
      emit(GameSelectionState.nameChange(
        gameName: event.gameName,
        validation: GameSelectionValidation.invalid,
      ));
    } else {
      emit(GameSelectionState.nameChange(
        gameName: event.gameName,
        validation: GameSelectionValidation.awaiting,
      ));
      final game = await repository.getGame(event.gameName);
      if (game != null) {
        final validation =
            game.status == GameStatus.created ? GameSelectionValidation.joinable : GameSelectionValidation.unjoinable;
        emit(GameSelectionState.nameChange(
          gameName: event.gameName,
          validation: validation,
        ));
      } else {
        emit(GameSelectionState.nameChange(
          gameName: event.gameName,
          validation: GameSelectionValidation.available,
        ));
      }
    }
  }

  void _onCreateGamePressed(CreateGamePressed event, Emitter<GameSelectionState> emit) async {
    final gameId = await repository.createGame(event.gameName);
    if (gameId != null) {
      emit(GameSelectionState.gameSelected(gameId));
    }
  }

  void _onJoinGamePressed(JoinGamePressed event, Emitter<GameSelectionState> emit) async {
    final game = await repository.getGame(event.gameName);
    if (game != null) {
      emit(GameSelectionState.gameSelected(game.id));
    }
  }
}
