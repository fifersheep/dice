import 'package:freezed_annotation/freezed_annotation.dart';

part 'bet_placement_event.freezed.dart';

@freezed
class BetPlacementEvent with _$BetPlacementEvent {
  const factory BetPlacementEvent.diceAvailable(int numberOfDice) = BetPlacementDiceAvailable;
  const factory BetPlacementEvent.betOptionSelected(int betOption) = BetPlacementBetOptionSelected;
  const factory BetPlacementEvent.valueOptionSelected(int valueOption, int numberOfDice) =
      BetPlacementValueOptionSelected;
}
