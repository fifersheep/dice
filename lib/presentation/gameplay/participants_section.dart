import 'package:dice/domain/gameplay/gameplay_bloc.dart';
import 'package:dice/presentation/constants/colors.dart';
import 'package:flutter/material.dart';

import 'participant_details.dart';

class ParticipantsSection extends StatelessWidget {
  ParticipantsSection(
    this.currentParticipant,
    this.opposingParticipant,
    this.leftParticipants,
    this.rightParticipants,
  );

  final GameInPlayParticipant currentParticipant;
  final GameInPlayParticipant? opposingParticipant;
  final List<GameInPlayParticipant> leftParticipants;
  final List<GameInPlayParticipant> rightParticipants;

  @override
  Widget build(BuildContext context) => Container(
        decoration: BoxDecoration(border: Border.all(color: ThemeColors.white)),
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
                children: leftParticipants
                    .map((e) => ParticipantDetails(
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
                if (opposingParticipant != null)
                  ParticipantDetails(
                    name: opposingParticipant!.name,
                    currentBet: opposingParticipant!.bet,
                    isActive: opposingParticipant!.isActive,
                  ),
                ParticipantDetails(
                  name: currentParticipant.name,
                  currentBet: currentParticipant.bet,
                  size: 42,
                  isActive: currentParticipant.isActive,
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 64),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: rightParticipants
                    .map((e) => ParticipantDetails(
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
