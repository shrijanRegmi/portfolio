import 'package:flutter/material.dart';

class AppTheme {
  /// Provides the light theme for the application.
  static ThemeData get lightThemePalette {
    return ThemeData();
  }

  /// Provides the dark theme for the application.
  static ThemeData get darkThemePalette {
    return lightThemePalette.copyWith();
  }
}
