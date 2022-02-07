import 'dart:io';

import 'package:flutter/cupertino.dart';

class ChangLanguageProvider extends ChangeNotifier {
  final List<Locale> _languageModels = [const Locale("en"), const Locale("vi")];
  Locale _locale = const Locale("en");
  Locale get locale => _locale;
 
  // ignore: non_constant_identifier_names
  ChangeNotifierProvider() {
    changeLanguage(Locale(Platform.localeName.split('_')[0]));
   
  }

  changeLanguage(Locale value) {
    print("length language:" + _languageModels.length.toString());
    for (int i = 0; i < _languageModels.length; i++) {
      if (value == _languageModels[i]) {
        _locale = _languageModels[i];
      }
    }
    notifyListeners();
  }
  
}
