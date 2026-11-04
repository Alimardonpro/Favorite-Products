import 'package:flutter/material.dart';
import '../utils/translations.dart';

class SettingsProvider with ChangeNotifier {
  bool _isDarkMode = false;
  bool _notificationsEnabled = true;
  String _languageCode = 'uz'; // 'uz', 'ru', 'en'

  bool get isDarkMode => _isDarkMode;
  bool get notificationsEnabled => _notificationsEnabled;
  String get languageCode => _languageCode;

  ThemeMode get themeMode => _isDarkMode ? ThemeMode.dark : ThemeMode.light;

  String get selectedLanguageTitle {
    switch (_languageCode) {
      case 'ru':
        return 'Русский';
      case 'en':
        return 'English';
      case 'uz':
      default:
        return 'Oʻzbekcha';
    }
  }

  String tr(String key) {
    return AppTranslations.get(_languageCode, key);
  }

  void toggleTheme(bool value) {
    _isDarkMode = value;
    notifyListeners();
  }

  void toggleNotifications(bool value) {
    _notificationsEnabled = value;
    notifyListeners();
  }

  void setLanguageCode(String code) {
    if (_languageCode != code) {
      _languageCode = code;
      notifyListeners();
    }
  }
}
