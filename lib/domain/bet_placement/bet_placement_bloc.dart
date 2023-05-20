import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:dice/data/local/current_player.dart';
import 'package:dice/data/local/shared_prefs.dart';
import 'package:dice/data/network/bet_placement_repository.dart';

import 'bet_placement_event.dart';
import 'bet_placement_state.dart';

class BetPlacementBloc extends Bloc<BetPlacementEvent, BetPlacementState> {
  BetPlacementBloc() : super(const BetPlacementState.loading()) {
    on<BetPlacementBettingAvailable>(_onBetPlacementBettingAvailable);
    on<BetPlacementBetOptionSelected>(_onBetPlacementBetOptionSelected);
    on<BetPlacementValueOptionSelected>(_onBetPlacementValueOptionSelected);
    on<BetPlacementBetPlaced>(_onBetPlacementBetPlaced);
    on<BetPlacementClaimLastBet>(_onBetPlacementClaimLastBet);
  }

  final repository = BetPlacementRepository();

  CurrentPlayer? _currentPlayer;

  void _onBetPlacementBettingAvailable(
    BetPlacementBettingAvailable event,
    Emitter<BetPlacementState> emit,
  ) async {
    emit(BetPlacementState.payload(
      gameId: event.gameId,
      numberOfDice: event.numberOfDice,
      highestBetQuantity: event.highestBetQuantity,
      betOptions: _getBetOptions(event.highestBetQuantity, event.numberOfDice),
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
    if (currentState is! BetPlacementPayload) {
      return;
    }
    final selectedValueOption = currentState.selectedValueOption;
    final String placeBetLabel;
    if (selectedValueOption != null) {
      final multiple = selectedValueOption > 1 ? "'s" : "";
      placeBetLabel = "${event.betOption}x$selectedValueOption$multiple";
    } else {
      placeBetLabel = "Bet";
    }

    emit(BetPlacementState.payload(
      gameId: currentState.gameId,
      numberOfDice: currentState.numberOfDice,
      highestBetQuantity: currentState.highestBetQuantity,
      betOptions: currentState.betOptions,
      valueOptions: [1, 2, 3, 4, 5, 6],
      selectedBetOption: event.betOption,
      selectedValueOption: currentState.selectedValueOption,
      placeBetLabel: placeBetLabel,
    ));
  }

  void _onBetPlacementValueOptionSelected(
    BetPlacementValueOptionSelected event,
    Emitter<BetPlacementState> emit,
  ) async {
    final currentState = state;
    if (currentState is! BetPlacementPayload) {
      return;
    }
    final isSwitchingToOnes = currentState.selectedValueOption != 1 && event.valueOption == 1;
    final isSwitchingFromOnes = currentState.selectedValueOption == 1 && event.valueOption != 1;
    final List<int> betOptions;
    final int? betOption;
    final String placeBetLabel;

    if (isSwitchingFromOnes) {
      final selectedBetOption = currentState.selectedBetOption;
      betOptions = _getBetOptions(currentState.highestBetQuantity, currentState.numberOfDice);
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
      gameId: currentState.gameId,
      numberOfDice: event.numberOfDice,
      highestBetQuantity: currentState.highestBetQuantity,
      betOptions: betOptions,
      valueOptions: [1, 2, 3, 4, 5, 6],
      selectedBetOption: betOption,
      selectedValueOption: event.valueOption,
      placeBetLabel: placeBetLabel,
    ));
  }

  void _onBetPlacementBetPlaced(
    BetPlacementBetPlaced event,
    Emitter<BetPlacementState> emit,
  ) async {
    final currentState = state;
    if (currentState is! BetPlacementPayload) {
      return;
    }
    emit(const BetPlacementState.placingBet());

    final currentPlayer = await _getCurrentPlayer();
    final betQuantity = currentState.selectedBetOption;
    final betValue = currentState.selectedValueOption;
    final uniqueId = currentPlayer?.gameParticipationCupIds[currentState.gameId];

    if (currentPlayer == null || betQuantity == null || betValue == null || uniqueId == null) {
      emit(currentState);
      return;
    }

    final placeBetResponse = await repository.placeBet(
      gameId: currentState.gameId,
      playerId: currentPlayer.id,
      participationCupId: uniqueId,
      betQuantity: betQuantity,
      betValue: betValue,
    );

    placeBetResponse.handle(
      onSuccess: (result) {
        if (result != 'Success') emit(currentState);
      },
      onFailure: (errorMessage) {
        emit(currentState);
      },
    );
  }

  void _onBetPlacementClaimLastBet(
    BetPlacementClaimLastBet event,
    Emitter<BetPlacementState> emit,
  ) async {
    final currentState = state;
    if (currentState is! BetPlacementPayload) {
      return;
    }

    emit(const BetPlacementState.placingClaim());

    final currentPlayer = await _getCurrentPlayer();
    final participationCupId = currentPlayer?.gameParticipationCupIds[currentState.gameId];

    if (currentPlayer == null || participationCupId == null) {
      emit(currentState);
      return;
    }

    final placeClaimResponse = await repository.placeClaim(
      gameId: currentState.gameId,
      playerId: currentPlayer.id,
      participationCupId: participationCupId,
    );

    placeClaimResponse.handle(
      onSuccess: (wasSuccessful) {
        if (!wasSuccessful) emit(currentState);
      },
      onFailure: (_) {
        emit(currentState);
      },
    );
  }

  List<int> _getBetOptions(int? highestBetQuantity, int numberOfDice) {
    final baseBetQuantity = highestBetQuantity ?? (numberOfDice / 3).ceil();
    final lowestBet = max(baseBetQuantity - 3, 1);
    return List.generate(8, (i) => i + lowestBet);
  }

  Future<CurrentPlayer?> _getCurrentPlayer() async {
    _currentPlayer ??= await SharedPrefs.getCurrentPlayer();
    return _currentPlayer;
  }
}
