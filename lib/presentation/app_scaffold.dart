import 'package:dice/presentation/constants/colors.dart';
import 'package:flutter/material.dart';

class AppScaffold extends StatelessWidget {
  const AppScaffold({Key? key, required this.body}) : super(key: key);

  final Widget body;

  @override
  Widget build(BuildContext context) => Banner(
        location: BannerLocation.topEnd,
        message: "Alpha",
        color: ThemeColors.red,
        child: Scaffold(
          body: body,
        ),
      );
}
