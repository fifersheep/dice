import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'game_selection_event.freezed.dart';

@freezed
class GameSelectionEvent with _$GameSelectionEvent {
  const factory GameSelectionEvent.gameTitleChanged(String gameTitle) =
      GameTitleChanged;
  const factory GameSelectionEvent.createGamePressed(String gameTitle) =
      CreateGamePressed;
  const factory GameSelectionEvent.joinGamePressed(String gameTitle) =
      JoinGamePressed;
}
