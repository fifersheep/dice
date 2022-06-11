import 'package:auto_route/auto_route.dart';
import 'package:dice/domain/game_selection/game_selection_bloc.dart';
import 'package:dice/domain/game_selection/game_selection_event.dart';
import 'package:dice/domain/game_selection/game_selection_state.dart';
import 'package:dice/presentation/app_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GameSelectionPage extends StatefulWidget {
  const GameSelectionPage({Key? key}) : super(key: key);

  @override
  State<GameSelectionPage> createState() => _GameSelectionPageState();
}

class _GameSelectionPageState extends State<GameSelectionPage> {
  final GameSelectionBloc bloc = GameSelectionBloc();

  @override
  Widget build(BuildContext context) {
    final editController = TextEditingController();
    return AppScaffold(
      body: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Dice",
              style: TextStyle(fontSize: 48),
            ),
            const SizedBox(height: 64),
            Center(
              child: Container(
                constraints: const BoxConstraints(maxWidth: 600),
                child: Column(
                  children: [
                    TextField(
                      decoration: const InputDecoration(labelText: 'Game name'),
                      onChanged: (value) => bloc.add(
                        GameSelectionEvent.gameNameChanged(value.trim()),
                      ),
                      controller: editController,
                    ),
                    const SizedBox(height: 16),
                    _gameSelection(editController),
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

  Widget _gameSelection(TextEditingController editController) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        BlocConsumer<GameSelectionBloc, GameSelectionState>(
          bloc: bloc,
          listener: (context, state) {
            if (state is GameSelected) {
              editController.clear();
              context.router.pushNamed('/games/${state.gameId}');
            }
          },
          builder: (context, state) {
            if (state is GameSelectionTitleChange) {
              if (state.validation == GameSelectionValidation.available) {
                return _createGame(state.gameName);
              } else if (state.validation == GameSelectionValidation.awaiting) {
                return _checkingGame();
              } else if (state.validation == GameSelectionValidation.joinable) {
                return _joinGame(state.gameName);
              } else if (state.validation == GameSelectionValidation.unjoinable) {
                return _alreadyStarted();
              } else {
                return _noActions();
              }
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

  Widget _alreadyStarted() => const Center(
        child: Text("This game has already started"),
      );

  Widget _noActions() => const Center(
        child: Text("Enter a valid game name"),
      );
}
