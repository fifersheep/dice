import 'package:flutter/material.dart';

import 'constants/theme.dart';
import 'routes/routes.gr.dart';

class App extends StatelessWidget {
  final _router = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Dice',
      theme: AppTheme.defaultTheme,
      routerDelegate: _router.delegate(),
      routeInformationParser: _router.defaultRouteParser(),
      debugShowCheckedModeBanner: false,
    );
  }
}
