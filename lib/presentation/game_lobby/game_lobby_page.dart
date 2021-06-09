import 'package:auto_route/auto_route.dart';
import 'package:dice/domain/gameplay/gameplay_bloc.dart';
import 'package:dice/domain/gameplay/gameplay_event.dart';
import 'package:dice/domain/gameplay/gameplay_state.dart';
import 'package:dice/presentation/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GameLobbyPage extends StatefulWidget {
  GameLobbyPage({@PathParam('id') required this.gameId});

  final String gameId;

  @override
  _GameLobbyPageState createState() => _GameLobbyPageState();
}

class _GameLobbyPageState extends State<GameLobbyPage> {
  final bloc = GameplayBloc();

  @override
  void initState() {
    bloc.add(GameplayEvent.joined(widget.gameId));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder(
        bloc: bloc,
        builder: (context, snapshot) {
          if (snapshot is GameInLobby) {
            return _lobby(snapshot.gameName, snapshot.participatingPlayers,
                snapshot.currentPlayerReady);
          } else if (snapshot is GameInPlay) {
            return Center(
              child: Text('Game ${snapshot.gameName} is in play'),
            );
          } else {
            return Center(
              child: Text('Game unavailable'),
            );
          }
        },
      ),
    );
  }

  Widget _lobby(String name, List<ParticipatingPlayer> participatingPlayers,
          bool currentPlayerReady) =>
      Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            name,
            style: TextStyle(fontSize: 48),
          ),
          SizedBox(height: 64),
          Center(
            child: Container(
              constraints: BoxConstraints(maxWidth: 600),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: participatingPlayers
                    .map(
                      (p) => _participant(p),
                    )
                    .toList(),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 48, horizontal: 16),
            child: GestureDetector(
              onTap: () => bloc.add(GameplayEvent.readyTapped()),
              child: Icon(
                currentPlayerReady
                    ? Icons.task_alt_outlined
                    : Icons.radio_button_unchecked_outlined,
                color: currentPlayerReady
                    ? ThemeColors.white
                    : ThemeColors.white25,
                size: 100,
              ),
            ),
          ),
        ],
      );

  Widget _participant(ParticipatingPlayer participatingPlayer) => Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            participatingPlayer.player.name,
            style: TextStyle(fontSize: 21),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Icon(
              participatingPlayer.participant.ready
                  ? Icons.task_alt_outlined
                  : Icons.radio_button_unchecked_outlined,
              color: participatingPlayer.participant.ready
                  ? ThemeColors.white
                  : ThemeColors.white25,
              size: 30,
            ),
          ),
        ],
      );

  @override
  void dispose() {
    bloc.close();
    super.dispose();
  }
}
