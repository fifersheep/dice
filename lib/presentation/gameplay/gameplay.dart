import 'package:dice/domain/gameplay/gameplay_state.dart';
import 'package:dice/presentation/gameplay/participants_section.dart';
import 'package:flutter/material.dart';

class Gameplay extends StatelessWidget {
  const Gameplay(this.gameInPlay);

  final GameInPlay gameInPlay;

  @override
  Widget build(BuildContext context) => LayoutBuilder(
        builder: (_, constraints) => Container(
          height: constraints.maxHeight * 0.4,
          child: ParticipantsSection(
            gameInPlay.currentParticipant,
            gameInPlay.opposingParticipant,
            gameInPlay.leftParticipants,
            gameInPlay.rightParticipants,
          ),
        ),
      );
}
