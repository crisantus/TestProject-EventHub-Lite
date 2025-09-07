import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';


enum ThemeEnums {
  light,
  dark,
}
/// Riverpod provider for accessing and modifying the current app theme.
final themeProvider = StateNotifierProvider<ThemeNotifier, ThemeEnums>(
  (ref) => ThemeNotifier(),
);

/// ThemeNotifier handles loading and toggling the current theme mode.
class ThemeNotifier extends StateNotifier<ThemeEnums> {
  static const _prefsKey = 'isDarkMode';

  ThemeNotifier() : super(ThemeEnums.light) {
    _loadThemeFromPrefs();
  }

  /// Loads the theme from local storage and updates the state.
  Future<void> _loadThemeFromPrefs() async {
    final prefs = await SharedPreferences.getInstance();
    final isDark = prefs.getBool(_prefsKey) ?? false;
    state = isDark ? ThemeEnums.dark : ThemeEnums.light;
  }

  /// Toggles the current theme and saves the preference.
  Future<void> toggleTheme() async {
    final prefs = await SharedPreferences.getInstance();
    final newTheme = state == ThemeEnums.dark ? ThemeEnums.light : ThemeEnums.dark;
    state = newTheme;
    await prefs.setBool(_prefsKey, newTheme == ThemeEnums.dark);
  }

  /// Manually set a theme
  Future<void> setTheme(ThemeEnums theme) async {
    final prefs = await SharedPreferences.getInstance();
    state = theme;
    await prefs.setBool(_prefsKey, theme == ThemeEnums.dark);
  }

  /// Returns true if the current theme is dark.
  bool get isDarkMode => state == ThemeEnums.dark;
}
