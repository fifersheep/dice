import 'package:dice/presentation/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'participant_details.dart';

class GameSelectionPage extends StatefulWidget {
  GameSelectionPage({Key? key}) : super(key: key);

  @override
  _GameSelectionPageState createState() => _GameSelectionPageState();
}

class _GameSelectionPageState extends State<GameSelectionPage> {
  @override
  Widget build(BuildContext context) {
    final x = OutlineInputBorder();
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
                  ),
                  SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      ButtonBar(
                        children: [
                          TextButton(
                            onPressed: () {},
                            child: Text("Create"),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text("Join"),
                          ),
                        ],
                      )
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
