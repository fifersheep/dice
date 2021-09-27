import 'package:flutter/material.dart';

class NoUserAction extends StatelessWidget {
  const NoUserAction({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Center(
        child: Text("Waiting for your turn..."),
      );
}
