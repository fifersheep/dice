import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'game_selection_event.freezed.dart';

@freezed
class GameSelectionEvent with _$GameSelectionEvent {
  const factory GameSelectionEvent.gameNameChanged(String gameName) =
      GameNameChanged;
  const factory GameSelectionEvent.createGamePressed(String gameName) =
      CreateGamePressed;
  const factory GameSelectionEvent.joinGamePressed(String gameName) =
      JoinGamePressed;
}
