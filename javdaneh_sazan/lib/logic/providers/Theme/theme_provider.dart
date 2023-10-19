// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeProvider extends ChangeNotifier {
  late ThemeMode themeMode = ThemeMode.system;

  ThemeProvider() {
    ReadTheme();
  }

  ReadTheme() async {
    final prefs = await SharedPreferences.getInstance();

    final String theme = prefs.getString('theme') ?? 'system';

    if (theme == 'system') {
      toggleTheme(ThemeMode.system);
    }
    if (theme == 'light') {
      toggleTheme(ThemeMode.light);
    }
    if (theme == 'dark') {
      toggleTheme(ThemeMode.dark);
    }

    return theme;
  }

  bool isDark() {
    if (themeMode == ThemeMode.dark) {
      return true;
    } else {
      return false;
    }
  }

  void toggleTheme(ThemeMode theme) {
    themeMode = theme;
    notifyListeners();
  }
}
