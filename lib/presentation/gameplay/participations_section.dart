import 'package:dice/domain/gameplay/gameplay_bloc.dart';
import 'package:flutter/material.dart';

import 'participation_details.dart';

class ParticipationsSection extends StatelessWidget {
  ParticipationsSection(
    this.height,
    this.currentParticipationDice,
    this.currentParticipation,
    this.opposingParticipation,
    this.leftParticipations,
    this.rightParticipations,
  );

  final double height;
  final String currentParticipationDice;
  final GameInPlayParticipation currentParticipation;
  final GameInPlayParticipation? opposingParticipation;
  final List<GameInPlayParticipation> leftParticipations;
  final List<GameInPlayParticipation> rightParticipations;

  @override
  Widget build(BuildContext context) => Center(
        child: Container(
          height: height,
          padding: const EdgeInsets.all(16),
          constraints: BoxConstraints(maxWidth: 800),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 64),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: leftParticipations
                      .map((e) => ParticipationDetails(
                            name: e.name,
                            currentBet: e.bet,
                            diceQuantity: e.diceQuantity,
                            isActive: e.isActive,
                          ))
                      .toList(),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  if (opposingParticipation != null)
                    ParticipationDetails(
                      name: opposingParticipation!.name,
                      currentBet: opposingParticipation!.bet,
                      diceQuantity: opposingParticipation!.diceQuantity,
                      isActive: opposingParticipation!.isActive,
                    ),
                  Spacer(),
                  ParticipationDetails(
                    name: currentParticipation.name,
                    currentBet: currentParticipation.bet,
                    diceQuantity: currentParticipation.diceQuantity,
                    diceValues: currentParticipationDice,
                    isActive: currentParticipation.isActive,
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 64),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: rightParticipations
                      .map((e) => ParticipationDetails(
                            name: e.name,
                            currentBet: e.bet,
                            diceQuantity: e.diceQuantity,
                            isActive: e.isActive,
                          ))
                      .toList(),
                ),
              )
            ],
          ),
        ),
      );
}
