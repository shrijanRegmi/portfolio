import 'package:flutter/material.dart';
import 'package:shrijan/app/app_colors.dart';
import 'package:shrijan/app/app_fonts.dart';

/// Provides the theme for the application.
class AppTheme {
  /// Provides the light theme for the application.
  static ThemeData get lightThemePalette {
    final defaultColorScheme = ThemeData().colorScheme;
    final defaultTextTheme = ThemeData().textTheme;

    return ThemeData(
      fontFamily: AppFonts.ppMori,
      colorScheme: defaultColorScheme.copyWith(
        primary: AppColors.primary,
      ),
      textTheme: defaultTextTheme.apply(
        bodyColor: AppColors.textColor,
        displayColor: AppColors.textColor,
        decorationColor: AppColors.textColor,
      ),
    );
  }

  /// Provides the dark theme for the application.
  static ThemeData get darkThemePalette {
    return lightThemePalette.copyWith();
  }
}
