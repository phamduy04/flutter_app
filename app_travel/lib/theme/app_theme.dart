import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class AppTheme {
  // light theme //
  static ThemeData lightTheme() {
    return ThemeData(
      brightness: Brightness.light,
      primaryColor: HexColor("#000000"),
      focusColor: HexColor("#FF616161"),
      hintColor: HexColor("#FFFFFF"),
    );
  }

  //dark theme //
  static ThemeData darkTheme() {
    return ThemeData(
      brightness: Brightness.dark,
      primaryColor: HexColor("#FFFFFF"),
      focusColor: HexColor("#FFFFFF"),
      hintColor: HexColor("#FF303030"),
    );
  }

  static const int lightThemeData = 0;
  static const int darkThemeData = 1;
  static ThemeData getTheme(int themeData) {
    if (themeData == darkThemeData) {
      return darkTheme();
    } else {
      return lightTheme();
    }
  }
}
