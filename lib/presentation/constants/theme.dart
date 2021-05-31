import 'package:flutter/material.dart';

import 'colors.dart';

class AppTheme {
  AppTheme._();

  static ThemeData get defaultTheme => ThemeData(
        brightness: Brightness.dark,
        primarySwatch: ThemeColors.white,
        accentColor: ThemeColors.secondary[300],
        scaffoldBackgroundColor: ThemeColors.primary,
        typography: Typography.material2018(),
        dividerColor: Colors.grey,
        fontFamily: 'Montserrat',
        inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: ThemeColors.white),
          ),
        ),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            primary: ThemeColors.green,
            padding: EdgeInsets.symmetric(horizontal: 24),
            backgroundColor: ThemeColors.white,
          ),
        ),
      );
}
