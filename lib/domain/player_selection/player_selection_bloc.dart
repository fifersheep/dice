import 'package:bloc/bloc.dart';
import 'package:dice/data/network/players_repository.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'player_selection_event.dart';
import 'player_selection_state.dart';

class PlayerSelectionBloc extends Bloc<PlayerSelectionEvent, PlayerSelectionState> {
  PlayerSelectionBloc() : super(PlayerSelectionState.nameInvalid()) {
    on<CheckForCurrentPlayer>(_onCheckForCurrentPlayer);
    on<PlayerNameChanged>(_onPlayerNameChanged);
    on<CreatePlayerPressed>(_onCreatePlayerPressed);
  }

  final repository = PlayersRepository();

  Future<void> _onCheckForCurrentPlayer(CheckForCurrentPlayer event, Emitter<PlayerSelectionState> emit) async {
    final prefs = await SharedPreferences.getInstance();
    final currentPlayerId = prefs.getInt('currentPlayerId');
    if (currentPlayerId != null) {
      emit(PlayerSelectionState.playerExists(currentPlayerId));
    } else {
      emit(PlayerSelectionState.nameInvalid());
    }
  }

  Future<void> _onPlayerNameChanged(PlayerNameChanged event, Emitter<PlayerSelectionState> emit) async {
    if (event.name.length < 5) {
      emit(PlayerSelectionState.nameInvalid());
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
      SharedPreferences.getInstance().then((prefs) async {
        await prefs.setInt('currentPlayerId', playerId);
      });
      emit(PlayerSelectionState.playerCreated());
    }
  }
}
