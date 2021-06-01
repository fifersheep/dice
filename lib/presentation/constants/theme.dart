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
          style: ButtonStyle(
            padding: MaterialStateProperty.resolveWith<EdgeInsetsGeometry>(
              (_) => EdgeInsets.symmetric(horizontal: 24),
            ),
            backgroundColor: MaterialStateProperty.resolveWith<Color>(
              (states) {
                if (states.contains(MaterialState.disabled))
                  return ThemeColors.white[50]!;
                return ThemeColors.white; // Use the component's default.
              },
            ),
            foregroundColor: MaterialStateProperty.resolveWith<Color>(
              (_) => ThemeColors.green,
            ),
          ),
        ),
      );
}
