import 'package:dice/domain/gameplay/gameplay_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'gameplay_state.freezed.dart';

class LobbyParticipationInfo {
  final String name;
  final bool ready;

  LobbyParticipationInfo(this.name, this.ready);
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
    required int currentPlayerId,
    required String gameName,
    required List<GameInPlayParticipation> leftParticipations,
    required List<GameInPlayParticipation> rightParticipations,
    required GameInPlayParticipation? opposingParticipation,
    required GameInPlayParticipation currentParticipation,
    required String currentParticipationDice,
    required int numberOfDice,
  }) = GameInPlay;
}
