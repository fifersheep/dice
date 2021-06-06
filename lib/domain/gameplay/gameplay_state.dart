import 'package:freezed_annotation/freezed_annotation.dart';

part 'gameplay_state.freezed.dart';

class LobbyParticipantInfo {
  final String name;
  final bool ready;

  LobbyParticipantInfo(this.name, this.ready);
}

@freezed
class GameplayState with _$GameplayState {
  const factory GameplayState.loading() = GameLoading;
  const factory GameplayState.error() = GameError;

  const factory GameplayState.inLobby({
    required String gameName,
    required List<LobbyParticipantInfo> participants,
  }) = GameInLobby;

  const factory GameplayState.inPlay({
    required String gameName,
    required List<String> participants,
  }) = GameInPlay;
}
