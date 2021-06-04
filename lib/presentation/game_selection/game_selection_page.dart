import 'package:auto_route/auto_route.dart';
import 'package:dice/domain/game_selection/game_selection_bloc.dart';
import 'package:dice/domain/game_selection/game_selection_event.dart';
import 'package:dice/domain/game_selection/game_selection_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GameSelectionPage extends StatefulWidget {
  GameSelectionPage({Key? key}) : super(key: key);

  @override
  _GameSelectionPageState createState() => _GameSelectionPageState();
}

class _GameSelectionPageState extends State<GameSelectionPage> {
  final GameSelectionBloc bloc = GameSelectionBloc();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Dice",
              style: TextStyle(fontSize: 48),
            ),
            SizedBox(height: 64),
            Center(
              child: Container(
                constraints: BoxConstraints(maxWidth: 600),
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(labelText: 'Game name'),
                      onChanged: (value) => bloc.add(
                        GameSelectionEvent.gameNameChanged(value.trim()),
                      ),
                    ),
                    SizedBox(height: 16),
                    _gameSelection(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    bloc.close();
    super.dispose();
  }

  Widget _gameSelection() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        BlocConsumer<GameSelectionBloc, GameSelectionState>(
          bloc: bloc,
          listener: (context, state) {
            if (state is GameSelected) {
              context.router.pushNamed('/games/${state.gameId}');
            }
          },
          builder: (context, state) {
            if (state is GameSelectionTitleChange) {
              if (state.validation == GameSelectionValidation.Available) {
                return _createGame(state.gameName);
              } else if (state.validation == GameSelectionValidation.Awaiting) {
                return _checkingGame();
              } else if (state.validation == GameSelectionValidation.Joinable) {
                return _joinGame(state.gameName);
              } else if (state.validation ==
                  GameSelectionValidation.Unjoinable) {
                return _alreadyStarted();
              } else {
                return _noActions();
              }
            } else if (state is GameSelected) {
              return Text('Joining game...');
            } else {
              return _noActions();
            }
          },
        )
      ],
    );
  }

  Widget _createGame(String gameName) => _button('Create', () {
        bloc.add(
          GameSelectionEvent.createGamePressed(gameName),
        );
      });

  Widget _joinGame(String gameName) => _button('Join', () {
        bloc.add(
          GameSelectionEvent.joinGamePressed(gameName),
        );
      });

  Widget _checkingGame() => _button('Checking...', null);

  Widget _button(String label, void Function()? onPressed) {
    return ButtonBar(
      children: [
        TextButton(
          onPressed: onPressed,
          child: Text(label),
        ),
      ],
    );
  }

  Widget _alreadyStarted() => Text("This game has already started");

  Widget _noActions() => Text("Enter a valid game name");
}
