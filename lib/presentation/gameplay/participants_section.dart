import 'package:dice/presentation/constants/colors.dart';
import 'package:flutter/material.dart';

import 'participant_details.dart';

class ParticipantsSection extends StatelessWidget {
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
                children: [
                  ParticipantDetails(
                    name: "Player 1",
                    currentBet: "5 - 7s",
                    isActive: false,
                  ),
                  ParticipantDetails(
                    name: "Player 2",
                    currentBet: "5-7s",
                    isActive: false,
                  ),
                ],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ParticipantDetails(
                  name: "Player 3",
                  currentBet: "5-7s",
                  isActive: false,
                ),
                ParticipantDetails(
                  name: "Player 4",
                  currentBet: "-",
                  size: 42,
                  isActive: true,
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 64),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ParticipantDetails(
                    name: "Player 5",
                    currentBet: "-",
                    isActive: false,
                  ),
                  ParticipantDetails(
                    name: "Player 6",
                    currentBet: "5-7s",
                    isActive: false,
                  ),
                ],
              ),
            )
          ],
        ),
      );
}
