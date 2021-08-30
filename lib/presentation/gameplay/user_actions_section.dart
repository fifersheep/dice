import 'package:flutter/material.dart';

class UserActionsSection extends StatefulWidget {
  const UserActionsSection({Key? key, required this.height}) : super(key: key);

  final double height;

  @override
  _UserActionsSectionState createState() => _UserActionsSectionState();
}

class _UserActionsSectionState extends State<UserActionsSection> {
  @override
  Widget build(BuildContext context) => Container(
        height: widget.height,
        padding: const EdgeInsets.all(16),
        child: Center(
          child: Text("Action!"),
        ),
      );
}
