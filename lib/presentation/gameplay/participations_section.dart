import 'package:dice/domain/gameplay/gameplay_bloc.dart';
import 'package:flutter/material.dart';

import 'participation_details.dart';

class ParticipationsSection extends StatelessWidget {
  ParticipationsSection(
    this.height,
    this.currentParticipation,
    this.opposingParticipation,
    this.leftParticipations,
    this.rightParticipations,
  );

  final double height;
  final GameInPlayParticipation currentParticipation;
  final GameInPlayParticipation? opposingParticipation;
  final List<GameInPlayParticipation> leftParticipations;
  final List<GameInPlayParticipation> rightParticipations;

  @override
  Widget build(BuildContext context) => Container(
        height: height,
        padding: const EdgeInsets.all(16),
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
                    isActive: opposingParticipation!.isActive,
                  ),
                ParticipationDetails(
                  name: currentParticipation.name,
                  currentBet: currentParticipation.bet,
                  size: 42,
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
                          isActive: e.isActive,
                        ))
                    .toList(),
              ),
            )
          ],
        ),
      );
}