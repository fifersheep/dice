import 'dart:math';

import 'package:bloc/bloc.dart';

import 'bet_placement_event.dart';
import 'bet_placement_state.dart';

class BetPlacementBloc extends Bloc<BetPlacementEvent, BetPlacementState> {
  BetPlacementBloc() : super(const BetPlacementState.loading()) {
    on<BetPlacementDiceAvailable>(_onBetPlacementDiceAvailable);
    on<BetPlacementBetOptionSelected>(_onBetPlacementBetOptionSelected);
    on<BetPlacementValueOptionSelected>(_onBetPlacementValueOptionSelected);
  }

  void _onBetPlacementDiceAvailable(
    BetPlacementDiceAvailable event,
    Emitter<BetPlacementState> emit,
  ) async {
    emit(BetPlacementState.payload(
      betOptions: _getDefaultBetOptions(event.numberOfDice),
      valueOptions: [1, 2, 3, 4, 5, 6],
      selectedBetOption: null,
      selectedValueOption: null,
      placeBetLabel: "Bet",
    ));
  }

  void _onBetPlacementBetOptionSelected(
    BetPlacementBetOptionSelected event,
    Emitter<BetPlacementState> emit,
  ) async {
    final currentState = state;
    if (currentState is BetPlacementPayload) {
      final selectedValueOption = currentState.selectedValueOption;
      final String placeBetLabel;
      if (selectedValueOption != null) {
        final multiple = selectedValueOption > 1 ? "'s" : "";
        placeBetLabel = "${event.betOption}x$selectedValueOption$multiple";
      } else {
        placeBetLabel = "Bet";
      }

      emit(BetPlacementState.payload(
        betOptions: currentState.betOptions,
        valueOptions: [1, 2, 3, 4, 5, 6],
        selectedBetOption: event.betOption,
        selectedValueOption: currentState.selectedValueOption,
        placeBetLabel: placeBetLabel,
      ));
    }
  }

  void _onBetPlacementValueOptionSelected(
    BetPlacementValueOptionSelected event,
    Emitter<BetPlacementState> emit,
  ) async {
    final currentState = state;
    if (currentState is BetPlacementPayload) {
      final isSwitchingToOnes = currentState.selectedValueOption != 1 && event.valueOption == 1;
      final isSwitchingFromOnes = currentState.selectedValueOption == 1 && event.valueOption != 1;
      final List<int> betOptions;
      final int? betOption;
      final String placeBetLabel;

      if (isSwitchingFromOnes) {
        final selectedBetOption = currentState.selectedBetOption;
        betOptions = _getDefaultBetOptions(event.numberOfDice);
        betOption = selectedBetOption != null ? selectedBetOption * 2 : null;
      } else if (isSwitchingToOnes) {
        final selectedBetOption = currentState.selectedBetOption;
        betOptions = currentState.betOptions.map((option) => (option / 2).ceil()).toSet().toList();
        betOption = selectedBetOption != null ? (selectedBetOption / 2).ceil() : null;
      } else {
        betOptions = currentState.betOptions;
        betOption = currentState.selectedBetOption;
      }

      if (betOption != null) {
        final multiple = betOption > 1 ? "'s" : "";
        placeBetLabel = "${betOption}x${event.valueOption}$multiple";
      } else {
        placeBetLabel = "Bet";
      }

      emit(BetPlacementState.payload(
        betOptions: betOptions,
        valueOptions: [1, 2, 3, 4, 5, 6],
        selectedBetOption: betOption,
        selectedValueOption: event.valueOption,
        placeBetLabel: placeBetLabel,
      ));
    }
  }

  List<int> _getDefaultBetOptions(int numberOfDice) {
    final lowestBet = max((numberOfDice / 3).ceil() - 3, 1);
    return List.generate(8, (i) => i + lowestBet);
  }
}
