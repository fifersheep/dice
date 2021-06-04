import 'package:freezed_annotation/freezed_annotation.dart';

part 'game_selection_state.freezed.dart';

@freezed
class GameSelectionState with _$GameSelectionState {
  const factory GameSelectionState.nameChange(
      {required String gameName,
      required GameSelectionValidation validation}) = GameSelectionTitleChange;
  const factory GameSelectionState.gameSelected(String gameId) = GameSelected;
}

enum GameSelectionValidation {
  Invalid,
  Awaiting,
  Unjoinable,
  Joinable,
  Available
}
