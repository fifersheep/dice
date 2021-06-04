import 'package:freezed_annotation/freezed_annotation.dart';

part 'gameplay_state.freezed.dart';

@freezed
class GameplayState with _$GameplayState {
  const factory GameplayState.loading() = GameLoading;
  const factory GameplayState.error() = GameError;

  const factory GameplayState.inLobby({
    required String gameName,
    required List<String> participants,
  }) = GameInLobby;

  const factory GameplayState.inPlay({
    required String gameName,
    required List<String> participants,
  }) = GameInPlay;
}
