import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'participant_details.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
