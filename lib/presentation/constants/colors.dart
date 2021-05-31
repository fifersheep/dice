import 'package:flutter/material.dart';

class ThemeColors {
  ThemeColors._();

  static const MaterialColor primary = green;
  static const MaterialColor secondary = purple;

  static const Color text = Color(0xFF1e1e2a);
  static const Color textOnPrimary = Color(0xE6FFFFFF);
  static const Color textOnPrimaryLight = Color(0xFFFFFFFF);
  static const Color textOnPrimaryDark = Color(0xCCFFFFFF);
  static const Color textOnSecondary = Color(0x8F000000);
  static const Color textOnSecondaryLight = Color(0x96000000);
  static const Color textOnSecondaryDark = Color(0x8F000000);
  static const Color textOnWhite = Color(0x96000000);

  // static const Color white = Color(0xFFFFFFFF);
  static const Color white25 = Color(0x40FFFFFF);

  static const Color black25 = Color(0x40000000);

  static const MaterialColor white = MaterialColor(_whitePrimaryValue, {
    50: Color(0x55FFFFFF),
    100: Color(0x77FFFFFF),
    200: Color(0x99FFFFFF),
    300: Color(0xBBFFFFFF),
    400: Color(0xDDFFFFFF),
    500: Color(_whitePrimaryValue),
    600: Color(_whitePrimaryValue),
    700: Color(_whitePrimaryValue),
    800: Color(_whitePrimaryValue),
    900: Color(_whitePrimaryValue),
  });
  static const int _whitePrimaryValue = 0xFFFFFFFF;

  static const MaterialColor red = MaterialColor(_redPrimaryValue, {
    50: Color(0xFFFBEBEB),
    100: Color(0xFFF5CCCC),
    200: Color(0xFFEEAAAA),
    300: Color(0xFFE78888),
    400: Color(0xFFE26F6F),
    500: Color(_redPrimaryValue),
    600: Color(0xFFD94E4E),
    700: Color(0xFFD44444),
    800: Color(0xFFCF3B3B),
    900: Color(0xFFC72A2A),
  });
  static const int _redPrimaryValue = 0xFFDD5555;

  static const MaterialColor green = MaterialColor(_greenPrimaryValue, {
    50: Color(0xFFEBF4EC),
    100: Color(0xFFCDE3D0),
    200: Color(0xFFACD0B1),
    300: Color(0xFF8ABD92),
    400: Color(0xFF71AF7A),
    500: Color(_greenPrimaryValue),
    600: Color(0xFF50995B),
    700: Color(0xFF478F51),
    800: Color(0xFF3D8547),
    900: Color(0xFF2D7435),
  });
  static const int _greenPrimaryValue = 0xFF58A163;

  static const MaterialColor greenAccent = MaterialColor(_greenAccentValue, {
    100: Color(0xFFBCFFC3),
    200: Color(_greenAccentValue),
    400: Color(0xFF56FF69),
    700: Color(0xFF3CFF52),
  });
  static const int _greenAccentValue = 0xFF89FF96;

  static const MaterialColor purple =
      MaterialColor(_purplePrimaryValue, <int, Color>{
    50: Color(0xFFF1EFF7),
    100: Color(0xFFDCD7EA),
    200: Color(0xFFC5BCDD),
    300: Color(0xFFADA1CF),
    400: Color(0xFF9C8DC4),
    500: Color(_purplePrimaryValue),
    600: Color(0xFF8271B3),
    700: Color(0xFF7766AB),
    800: Color(0xFF6D5CA3),
    900: Color(0xFF5A4994),
  });
  static const int _purplePrimaryValue = 0xFF8A79BA;

  static const MaterialColor purpleAccent =
      MaterialColor(_purpleAccentValue, <int, Color>{
    100: Color(0xFFF3F0FF),
    200: Color(_purpleAccentValue),
    400: Color(0xFFA38AFF),
    700: Color(0xFF8F70FF),
  });
  static const int _purpleAccentValue = 0xFFCBBDFF;
}
