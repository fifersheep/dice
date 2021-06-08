import 'package:bloc/bloc.dart';
import 'package:dice/data/network/players_repository.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'player_selection_event.dart';
import 'player_selection_state.dart';

class PlayerSelectionBloc
    extends Bloc<PlayerSelectionEvent, PlayerSelectionState> {
  PlayerSelectionBloc() : super(PlayerSelectionState.nameInvalid());

  final repository = FirebasePlayersRepository();

  @override
  Stream<PlayerSelectionState> mapEventToState(
      PlayerSelectionEvent event) async* {
    if (event is CheckForCurrentPlayer) {
      final prefs = await SharedPreferences.getInstance();
      final currentPlayerId = prefs.getString('currentPlayerId');
      if (currentPlayerId != null) {
        yield PlayerSelectionState.playerExists(currentPlayerId);
      } else {
        yield PlayerSelectionState.nameInvalid();
      }
    } else if (event is PlayerNameChanged) {
      if (event.name.length < 5) {
        yield PlayerSelectionState.nameInvalid();
      } else {
        final player = await repository.searchPlayer(event.name);
        if (player == null) {
          yield PlayerSelectionState.nameAvailable(event.name);
        } else {
          yield PlayerSelectionState.nameUnavailable(event.name);
        }
      }
    } else if (event is CreatePlayerPressed) {
      final player = await repository.createPlayer(event.name);
      if (player != null) {
        SharedPreferences.getInstance().then((prefs) async {
          await prefs.setString('currentPlayerId', player.id);
        });
        yield PlayerSelectionState.playerCreated();
      }
    }
  }
}
