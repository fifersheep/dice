import 'package:freezed_annotation/freezed_annotation.dart';

part 'bet_placement_state.freezed.dart';

@freezed
class BetPlacementState with _$BetPlacementState {
  const factory BetPlacementState.loading() = BetPlacementLoading;
  const factory BetPlacementState.payload({
    required int gameId,
    required int numberOfDice,
    required int? highestBetQuantity,
    required List<int> betOptions,
    required List<int> valueOptions,
    required int? selectedBetOption,
    required int? selectedValueOption,
    required String placeBetLabel,
  }) = BetPlacementPayload;
  const factory BetPlacementState.placingBet() = BetPlacementPlacingBet;
  const factory BetPlacementState.placingClaim() = BetPlacementPlacingClaim;
}
