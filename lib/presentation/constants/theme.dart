import 'package:flutter/material.dart';

import 'colors.dart';

class AppTheme {
  AppTheme._();

  static ThemeData get defaultTheme => ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: ThemeColors.primary,
        typography: Typography.material2018(),
        dividerColor: Colors.grey,
        fontFamily: 'Montserrat',
        inputDecorationTheme: const InputDecorationTheme(
          border: OutlineInputBorder(),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: ThemeColors.white),
          ),
        ),
        textButtonTheme: TextButtonThemeData(
          style: ButtonStyle(
            padding: MaterialStateProperty.resolveWith<EdgeInsetsGeometry>(
              (_) => const EdgeInsets.symmetric(horizontal: 24),
            ),
            backgroundColor: MaterialStateProperty.resolveWith<Color>(
              (states) {
                if (states.contains(MaterialState.disabled)) return ThemeColors.white[50]!;
                return ThemeColors.white; // Use the component's default.
              },
            ),
            foregroundColor: MaterialStateProperty.resolveWith<Color>(
              (_) => ThemeColors.green,
            ),
          ),
        ),
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: ThemeColors.white,
          brightness: Brightness.dark,
        ).copyWith(
          secondary: ThemeColors.secondary[300],
        ),
      );
}
