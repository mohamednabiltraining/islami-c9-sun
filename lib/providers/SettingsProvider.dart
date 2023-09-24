import 'package:flutter/material.dart';

// observable object
// subject
// provider
class SettingsProvider extends ChangeNotifier {
  ThemeMode currentTheme = ThemeMode.light;
  String currentLocale = 'en';

  void changeTheme(ThemeMode newTheme) {
    if (newTheme == currentTheme) return;
    currentTheme = newTheme;
    notifyListeners();
  }

  String getBackgroundImage() {
    return currentTheme == ThemeMode.dark
        ? 'assets/images/main_background_dark.jpg'
        : 'assets/images/main_background.png';
  }

  bool isDarkEnabled() {
    return currentTheme == ThemeMode.dark;
  }

  void changeLocale(String newLocale) {
    if (newLocale == currentLocale) return;
    currentLocale = newLocale;
    notifyListeners();
  }
}
