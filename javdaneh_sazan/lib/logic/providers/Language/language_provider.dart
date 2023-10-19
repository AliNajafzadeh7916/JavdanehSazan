import 'package:flutter/material.dart';

class LanguageProvider extends ChangeNotifier {
  Locale localeIR = const Locale('fa', 'IR');
  Locale localeEN = const Locale('en', 'US');

  Locale localeMode = const Locale('fa', 'IR');

  void toggleLocale() {
    localeMode = localeMode == localeIR
        ? const Locale('en', 'US')
        : const Locale('fa', 'IR');
    notifyListeners();
  }
}
