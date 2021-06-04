import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class GameLobbyPage extends StatelessWidget {
  GameLobbyPage({@PathParam('id') required this.gameId});

  final String gameId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Game ID: $gameId'),
      ),
    );
  }
}
