import 'package:dice/domain/gameplay/gameplay_state.dart';
import 'package:dice/presentation/gameplay/participations_section.dart';
import 'package:dice/presentation/gameplay/user_actions_section.dart';
import 'package:flutter/material.dart';

class Gameplay extends StatelessWidget {
  const Gameplay(this.gameInPlay, {Key? key}) : super(key: key);

  final GameInPlay gameInPlay;

  @override
  Widget build(BuildContext context) => LayoutBuilder(
        builder: (_, constraints) => Column(
          children: [
            ParticipationsSection(
              constraints.maxHeight * 0.4,
              gameInPlay.currentParticipationDice,
              gameInPlay.currentParticipation,
              gameInPlay.opposingParticipation,
              gameInPlay.leftParticipations,
              gameInPlay.rightParticipations,
            ),
            _gameMessageWidget(
              constraints.maxHeight * 0.1,
              gameInPlay.gameMessage,
            ),
            UserActionsSection(
              height: constraints.maxHeight * 0.5,
              isActive: gameInPlay.currentParticipation.isActive,
              gameId: gameInPlay.gameId,
              numberOfDice: gameInPlay.numberOfDice,
              highestBetQuantity: gameInPlay.highestBetQuantity,
            ),
          ],
        ),
      );

  Widget _gameMessageWidget(double height, String? gameMessage) => SizedBox(
        height: height,
        child: gameMessage != null
            ? Center(
                child: Text(
                  gameMessage,
                  style: const TextStyle(
                    fontSize: 18,
                  ),
                ),
              )
            : null,
      );
}
