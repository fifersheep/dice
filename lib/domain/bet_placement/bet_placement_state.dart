import 'package:freezed_annotation/freezed_annotation.dart';

part 'bet_placement_state.freezed.dart';

@freezed
class BetPlacementState with _$BetPlacementState {
  const factory BetPlacementState.loading() = BetPlacementLoading;
  const factory BetPlacementState.payload({
    required List<int> betOptions,
    required List<int> valueOptions,
    required int? selectedBetOption,
    required int? selectedValueOption,
    required String placeBetLabel,
  }) = BetPlacementPayload;
}
