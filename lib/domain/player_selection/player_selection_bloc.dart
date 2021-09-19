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

  final repository = FirebasePlayersRepository();

  Future<void> _onCheckForCurrentPlayer(CheckForCurrentPlayer event, Emitter<PlayerSelectionState> emit) async {
    final prefs = await SharedPreferences.getInstance();
    final currentPlayerId = prefs.getString('currentPlayerId');
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
      final player = await repository.searchPlayer(event.name);
      if (player == null) {
        emit(PlayerSelectionState.nameAvailable(event.name));
      } else {
        emit(PlayerSelectionState.nameUnavailable(event.name));
      }
    }
  }

  Future<void> _onCreatePlayerPressed(CreatePlayerPressed event, Emitter<PlayerSelectionState> emit) async {
    final player = await repository.createPlayer(event.name);
    if (player != null) {
      SharedPreferences.getInstance().then((prefs) async {
        await prefs.setString('currentPlayerId', player.id);
      });
      emit(PlayerSelectionState.playerCreated());
    }
  }
}
