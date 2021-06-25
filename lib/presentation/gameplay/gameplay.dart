import 'package:dice/domain/gameplay/gameplay_state.dart';
import 'package:flutter/material.dart';

class Gameplay extends StatelessWidget {
  const Gameplay(this.gameInPlay);

  final GameInPlay gameInPlay;

  @override
  Widget build(BuildContext context) => Center(
        child: Text('Game ${gameInPlay.gameName} is in play'),
      );
}
