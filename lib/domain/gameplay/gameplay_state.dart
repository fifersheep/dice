import 'package:dice/domain/gameplay/gameplay_bloc.dart';
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
    required bool currentPlayerReady,
    required String gameName,
    required List<ParticipatingPlayer> participatingPlayers,
    required bool loading,
  }) = GameInLobby;

  const factory GameplayState.inPlay({
    required String currentPlayerId,
    required String gameName,
    required List<GameInPlayParticipant> leftParticipants,
    required List<GameInPlayParticipant> rightParticipants,
    required GameInPlayParticipant? opposingParticipant,
    required GameInPlayParticipant currentParticipant,
  }) = GameInPlay;
}
