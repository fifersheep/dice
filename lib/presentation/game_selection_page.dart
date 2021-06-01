import 'package:dice/domain/game_selection/game_selection_bloc.dart';
import 'package:dice/domain/game_selection/game_selection_event.dart';
import 'package:dice/domain/game_selection/game_selection_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
                    decoration: InputDecoration(labelText: 'Game title'),
                    onChanged: (value) => bloc.add(
                      GameSelectionEvent.gameTitleChanged(value),
                    ),
                  ),
                  SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      StreamBuilder<GameSelectionState>(
                          stream: bloc.stream,
                          builder: (context, snapshot) {
                            final enableButtons =
                                snapshot.data?.isGameTitleValid == true;
                            return ButtonBar(
                              children: [
                                TextButton(
                                  onPressed: enableButtons ? () {} : null,
                                  child: Text("Create"),
                                ),
                                TextButton(
                                  onPressed: enableButtons ? () {} : null,
                                  child: Text("Join"),
                                ),
                              ],
                            );
                          })
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
