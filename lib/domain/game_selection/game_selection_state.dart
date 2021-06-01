import 'package:freezed_annotation/freezed_annotation.dart';

part 'game_selection_state.freezed.dart';

@freezed
class GameSelectionState with _$GameSelectionState {
  factory GameSelectionState({
    required String gameTitle,
    required bool isGameTitleValid,
  }) = _GameSelectionState;
}
