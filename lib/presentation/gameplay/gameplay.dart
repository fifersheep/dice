import 'package:dice/domain/gameplay/gameplay_state.dart';
import 'package:dice/presentation/gameplay/participations_section.dart';
import 'package:dice/presentation/gameplay/user_actions_section.dart';
import 'package:flutter/material.dart';

class Gameplay extends StatelessWidget {
  const Gameplay(this.gameInPlay);

  final GameInPlay gameInPlay;

  @override
  Widget build(BuildContext context) => LayoutBuilder(
        builder: (_, constraints) => Column(
          children: [
            ParticipationsSection(
              constraints.maxHeight * 0.4,
              gameInPlay.currentParticipation,
              gameInPlay.opposingParticipation,
              gameInPlay.leftParticipations,
              gameInPlay.rightParticipations,
            ),
            UserActionsSection(
              height: constraints.maxHeight * 0.6,
              isActive: gameInPlay.currentParticipation.isActive,
            ),
          ],
        ),
      );
}
