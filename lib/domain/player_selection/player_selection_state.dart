import 'package:freezed_annotation/freezed_annotation.dart';

part 'player_selection_state.freezed.dart';

@freezed
class PlayerSelectionState with _$PlayerSelectionState {
  const factory PlayerSelectionState.nameInvalid() = PlayerNameInvalid;
  const factory PlayerSelectionState.nameAvailable(String name) = PlayerNameAvailable;
  const factory PlayerSelectionState.nameUnavailable(String name) = PlayerNameUnavailable;
  const factory PlayerSelectionState.checkingName(String name) = CheckingPlayerName;
  const factory PlayerSelectionState.nameChange(String name) = PlayerNameChange;
  const factory PlayerSelectionState.playerCreated() = PlayerCreated;
  const factory PlayerSelectionState.playerExists(int id) = PlayerExists;
}
