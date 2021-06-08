import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'player_selection_event.freezed.dart';

@freezed
class PlayerSelectionEvent with _$PlayerSelectionEvent {
  const factory PlayerSelectionEvent.nameChanged(String name) =
      PlayerNameChanged;
  const factory PlayerSelectionEvent.createPlayerPressed(String name) =
      CreatePlayerPressed;
  const factory PlayerSelectionEvent.checkForCurrentPlayer() =
      CheckForCurrentPlayer;
}
