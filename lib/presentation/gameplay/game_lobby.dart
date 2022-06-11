import 'package:dice/domain/gameplay/gameplay_bloc.dart';
import 'package:dice/domain/gameplay/gameplay_state.dart';
import 'package:dice/presentation/constants/colors.dart';
import 'package:flutter/material.dart';

class GameLobby extends StatelessWidget {
  const GameLobby(this.gameInLobby, this.onTapReady, {Key? key}) : super(key: key);

  final GameInLobby gameInLobby;
  final Function() onTapReady;

  @override
  Widget build(BuildContext context) {
    if (gameInLobby.loading) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            CircularProgressIndicator(),
            SizedBox(
              height: 16,
            ),
            Text('Game starting...'),
          ],
        ),
      );
    } else {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            gameInLobby.gameName,
            style: const TextStyle(fontSize: 48),
          ),
          const SizedBox(height: 64),
          Center(
            child: Container(
              constraints: const BoxConstraints(maxWidth: 600),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: gameInLobby.participatingPlayers
                    .map(
                      (p) => _participation(p),
                    )
                    .toList(),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 48, horizontal: 16),
            child: GestureDetector(
              onTap: onTapReady,
              child: Icon(
                gameInLobby.currentPlayerReady ? Icons.task_alt_outlined : Icons.radio_button_unchecked_outlined,
                color: gameInLobby.currentPlayerReady ? ThemeColors.white : ThemeColors.white25,
                size: 100,
              ),
            ),
          ),
        ],
      );
    }
  }

  Widget _participation(ParticipatingPlayer participatingPlayer) => Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            participatingPlayer.player.name,
            style: const TextStyle(fontSize: 21),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Icon(
              participatingPlayer.participation.playerReady
                  ? Icons.task_alt_outlined
                  : Icons.radio_button_unchecked_outlined,
              color: participatingPlayer.participation.playerReady ? ThemeColors.white : ThemeColors.white25,
              size: 30,
            ),
          ),
        ],
      );
}
