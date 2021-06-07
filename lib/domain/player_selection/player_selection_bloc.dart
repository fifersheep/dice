import 'package:bloc/bloc.dart';
import 'package:dice/data/network/players_repository.dart';

import 'player_selection_event.dart';
import 'player_selection_state.dart';

class PlayerSelectionBloc
    extends Bloc<PlayerSelectionEvent, PlayerSelectionState> {
  PlayerSelectionBloc() : super(PlayerSelectionState.nameInvalid());

  final repository = FirebasePlayersRepository();

  @override
  Stream<PlayerSelectionState> mapEventToState(
      PlayerSelectionEvent event) async* {
    if (event is PlayerNameChanged) {
      if (event.name.length < 5) {
        yield PlayerSelectionState.nameInvalid();
      } else {
        // yield PlayerSelectionState.nameChange(event.name);

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
        yield PlayerSelectionState.playerCreated(player.id);
      }
    }
  }
}
