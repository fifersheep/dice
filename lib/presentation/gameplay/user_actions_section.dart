import 'package:dice/presentation/gameplay/user_action/bet_user_action.dart';
import 'package:dice/presentation/gameplay/user_action/no_user_action.dart';
import 'package:flutter/material.dart';

class UserActionsSection extends StatefulWidget {
  const UserActionsSection({Key? key, required this.height, required this.isActive}) : super(key: key);

  final double height;
  final bool isActive;

  @override
  _UserActionsSectionState createState() => _UserActionsSectionState();
}

class _UserActionsSectionState extends State<UserActionsSection> {
  @override
  Widget build(BuildContext context) => Container(
        height: widget.height,
        padding: const EdgeInsets.all(16),
        child: widget.isActive ? BetUserAction() : NoUserAction(),
      );
}
