import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'constants/theme.dart';
import 'game_selection_page.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dice',
      theme: AppTheme.defaultTheme,
      home: GameSelectionPage(),
    );
  }
}
