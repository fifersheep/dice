import 'package:freezed_annotation/freezed_annotation.dart';

part 'bet_placement_event.freezed.dart';

@freezed
class BetPlacementEvent with _$BetPlacementEvent {
  const factory BetPlacementEvent.bettingAvailable(int gameId, int numberOfDice, int? highestBetQuantity) =
      BetPlacementBettingAvailable;
  const factory BetPlacementEvent.betOptionSelected(int betOption) = BetPlacementBetOptionSelected;
  const factory BetPlacementEvent.valueOptionSelected(int valueOption, int numberOfDice) =
      BetPlacementValueOptionSelected;
  const factory BetPlacementEvent.placeBet() = BetPlacementBetPlaceed;
}
