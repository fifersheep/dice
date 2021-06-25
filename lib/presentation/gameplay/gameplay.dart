import 'package:dice/domain/gameplay/gameplay_state.dart';
import 'package:flutter/material.dart';

import 'participant_details.dart';

class Gameplay extends StatelessWidget {
  const Gameplay(this.gameInPlay);

  final GameInPlay gameInPlay;

  @override
  Widget build(BuildContext context) => Column(
        children: gameInPlay.participatingPlayers
            .map((pp) => ParticipantDetails(
                  name: pp.player.name,
                  isActive: true,
                ))
            .toList(),
      );
}
