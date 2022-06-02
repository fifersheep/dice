import 'package:auto_route/auto_route.dart';
import 'package:dice/domain/gameplay/gameplay_bloc.dart';
import 'package:dice/domain/gameplay/gameplay_event.dart';
import 'package:dice/domain/gameplay/gameplay_state.dart';
import 'package:dice/presentation/app_scaffold.dart';
import 'package:dice/presentation/gameplay/game_lobby.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'gameplay.dart';

class GameLobbyPage extends StatefulWidget {
  GameLobbyPage({@PathParam('id') required this.gameId});

  final int gameId;

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
    return AppScaffold(
      body: BlocBuilder(
        bloc: bloc,
        builder: (context, snapshot) {
          if (snapshot is GameInLobby) {
            return GameLobby(snapshot, () => bloc.add(GameplayEvent.readyTapped()));
          } else if (snapshot is GameInPlay) {
            return Gameplay(snapshot);
          } else {
            return Center(
              child: Text('Game unavailable'),
            );
          }
        },
      ),
    );
  }

  @override
  void dispose() {
    bloc.close();
    super.dispose();
  }
}
