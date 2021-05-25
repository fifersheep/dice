import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'participant_details.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ParticipantDetails(
              name: "Tom",
              isActive: false,
            ),
            ParticipantDetails(
              name: "Tristan",
              isActive: false,
            ),
            ParticipantDetails(
              name: "Scott",
              isActive: true,
            ),
            ParticipantDetails(
              name: "Josh",
              isActive: false,
            ),
            ParticipantDetails(
              name: "Rob",
              isActive: false,
            ),
            ParticipantDetails(
              name: "Liam",
              isActive: false,
            ),
          ],
        ),
      ),
    );
  }
}
