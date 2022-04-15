import 'package:dice/domain/gameplay/gameplay_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'gameplay_event.freezed.dart';

@freezed
class GameplayEvent with _$GameplayEvent {
  const factory GameplayEvent.joined(int gameId) = GameplayJoined;
  const factory GameplayEvent.gameplayUpdated(GameplayModel gameplay) = GameplayUpdated;
  const factory GameplayEvent.readyTapped() = ReadyTapped;
}
