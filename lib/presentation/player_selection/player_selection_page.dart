import 'package:auto_route/auto_route.dart';
import 'package:dice/domain/player_selection/player_selection_bloc.dart';
import 'package:dice/domain/player_selection/player_selection_event.dart';
import 'package:dice/domain/player_selection/player_selection_state.dart';
import 'package:dice/presentation/app_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PlayerSelectionPage extends StatefulWidget {
  const PlayerSelectionPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _PlayerSelectionPageState();
}

class _PlayerSelectionPageState extends State<PlayerSelectionPage> {
  final bloc = PlayerSelectionBloc();

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
                      decoration: const InputDecoration(labelText: 'Player name'),
                      onChanged: (value) => bloc.add(PlayerSelectionEvent.nameChanged(value)),
                      controller: editController,
                    ),
                    const SizedBox(height: 16),
                    _actions(editController),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _actions(TextEditingController editController) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        BlocConsumer<PlayerSelectionBloc, PlayerSelectionState>(
          bloc: bloc..add(const PlayerSelectionEvent.checkForCurrentPlayer()),
          listener: (context, state) {
            if (state is PlayerExists || state is PlayerCreated) {
              context.router.pushNamed('/games');
            }
          },
          builder: (context, state) {
            if (state is PlayerNameAvailable) {
              return _create(state.name);
            } else if (state is PlayerNameUnavailable) {
              return _alreadyInUse();
            } else if (state is PlayerNameInvalid) {
              return _invalid();
            } else if (state is CheckingPlayerName) {
              return _checking();
            } else {
              return _error();
            }
          },
        )
      ],
    );
  }

  Widget _create(String gameName) => _button('Create', () {
        bloc.add(
          PlayerSelectionEvent.createPlayerPressed(gameName),
        );
      });

  Widget _checking() => _button('Checking...', null);

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

  Widget _alreadyInUse() => const Text("This player name is already in use");

  Widget _invalid() => const Text("Enter a valid player name");

  Widget _error() => const Text("An error has occurred");
}
