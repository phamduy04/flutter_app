

import 'package:app_travel/theme/app_theme.dart';
import 'package:app_travel/theme/sharef_theme.dart';
import 'package:flutter/material.dart';

class AppThemeProvider extends ChangeNotifier {
   ThemeData? _themeData;

  ThemeData get themeData => _themeData!;

   AppThemeProvider(int theme) {
    _themeData = AppTheme.getTheme(theme);
    notifyListeners();
  }

  changTheme(int theme) async {
    _themeData = AppTheme.getTheme(theme);
    await SharedPrfTheme.setTheme(theme);
    notifyListeners();
  }
}
