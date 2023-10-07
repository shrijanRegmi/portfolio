import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
      textTheme: defaultTextTheme
          .copyWith(
            displayLarge: defaultTextTheme.displayLarge?.copyWith(
              fontSize: 670.sp,
              fontWeight: FontWeight.w900,
              fontFamily: AppFonts.arges,
              height: 1.0,
              letterSpacing: 4.0,
            ),
            displayMedium: defaultTextTheme.displayMedium?.copyWith(
              fontSize: 355.sp,
              fontWeight: FontWeight.w900,
              fontFamily: AppFonts.arges,
              height: 1.0,
              letterSpacing: 4.0,
            ),
            displaySmall: defaultTextTheme.displayMedium?.copyWith(
              fontSize: 324.sp,
              fontWeight: FontWeight.w900,
              fontFamily: AppFonts.arges,
              height: 1.0,
              letterSpacing: 4.0,
            ),
            titleLarge: defaultTextTheme.titleLarge?.copyWith(
              fontSize: 20.sp,
              fontWeight: FontWeight.normal,
              fontFamily: AppFonts.ppMori,
            ),
            titleMedium: defaultTextTheme.titleMedium?.copyWith(
              fontSize: 18.sp,
              fontWeight: FontWeight.normal,
              fontFamily: AppFonts.ppMori,
            ),
            titleSmall: defaultTextTheme.titleSmall?.copyWith(
              fontSize: 16.sp,
              fontWeight: FontWeight.normal,
              fontFamily: AppFonts.ppMori,
            ),
          )
          .apply(
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
