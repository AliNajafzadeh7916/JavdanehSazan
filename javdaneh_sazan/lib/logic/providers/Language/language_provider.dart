import 'package:flutter/material.dart';

class LanguageProvider extends ChangeNotifier {
  Locale localeIR = const Locale('fa', 'IR');
  Locale localeSA = const Locale('ar', 'SA');

  Locale localeMode = const Locale('fa', 'IR');

  void toggleLocale() {
    localeMode = localeMode == localeIR
        ? const Locale('ar', 'SA')
        : const Locale('fa', 'IR');
    notifyListeners();
  }
}
