import 'package:flutter/material.dart';

class Constant {
  static const Color mainColor = Color(_mainColorValue);

  static const int _mainColorValue = 0xFF003569;

  static const MaterialColor mainColorSwatch = MaterialColor(
    _mainColorValue,
    <int, Color>{
      50: mainColor,
      100: mainColor,
      200: mainColor,
      300: mainColor,
      400: mainColor,
      500: mainColor,
      600: mainColor,
      700: mainColor,
      800: mainColor,
      900: mainColor,
    },
  );

  static const Color accentColor = Color(_accentColorValue);

  static const int _accentColorValue = 0xFFF78611;
}
