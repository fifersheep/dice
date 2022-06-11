import 'package:bloc/bloc.dart';
import 'package:dice/data/local/shared_prefs.dart';
import 'package:dice/data/network/players_repository.dart';

import 'player_selection_event.dart';
import 'player_selection_state.dart';

class PlayerSelectionBloc extends Bloc<PlayerSelectionEvent, PlayerSelectionState> {
  PlayerSelectionBloc() : super(const PlayerSelectionState.nameInvalid()) {
    on<CheckForCurrentPlayer>(_onCheckForCurrentPlayer);
    on<PlayerNameChanged>(_onPlayerNameChanged);
    on<CreatePlayerPressed>(_onCreatePlayerPressed);
  }

  final repository = PlayersRepository();

  Future<void> _onCheckForCurrentPlayer(CheckForCurrentPlayer event, Emitter<PlayerSelectionState> emit) async {
    final currentPlayerId = await SharedPrefs.getCurrentPlayer().then((currentPlayer) => currentPlayer?.id);
    if (currentPlayerId != null) {
      emit(PlayerSelectionState.playerExists(currentPlayerId));
    } else {
      emit(const PlayerSelectionState.nameInvalid());
    }
  }

  Future<void> _onPlayerNameChanged(PlayerNameChanged event, Emitter<PlayerSelectionState> emit) async {
    if (event.name.length < 5) {
      emit(const PlayerSelectionState.nameInvalid());
    } else {
      final playerExists = await repository.doesPlayerExist(event.name);
      if (playerExists) {
        emit(PlayerSelectionState.nameUnavailable(event.name));
      } else {
        emit(PlayerSelectionState.nameAvailable(event.name));
      }
    }
  }

  Future<void> _onCreatePlayerPressed(CreatePlayerPressed event, Emitter<PlayerSelectionState> emit) async {
    final playerId = await repository.createPlayer(event.name);
    if (playerId != null) {
      await SharedPrefs.setCurrentPlayer(playerId);
      emit(const PlayerSelectionState.playerCreated());
    }
  }
}
