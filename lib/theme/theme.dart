import 'package:flutter/material.dart';
import 'package:sber/theme/fonts.dart';
import 'package:sber/theme/colors.dart';

class AppTheme {
  static ThemeData themeData = ThemeData(
    textTheme: TextTheme(
      titleLarge: AppFonts.titleLarge,
      titleMedium: AppFonts.titleMedium,
      bodySmall: AppFonts.bodySmall,
      bodyMedium: AppFonts.bodyMedium,
      bodyLarge: AppFonts.bodyLarge
    ),
    appBarTheme: const AppBarTheme(
      elevation: 4,
      surfaceTintColor: AppColors.primary,
    ),

    chipTheme: ChipThemeData(
      labelPadding: const EdgeInsets.symmetric(horizontal: 4),
      labelStyle: AppFonts.titleVerySmall,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
          side: const BorderSide(color: Colors.transparent)
      ),
      backgroundColor: AppColors.chips,
      selectedColor: AppColors.tabBrand,
      showCheckmark: false
      ),
    colorScheme: ColorScheme.fromSeed(
      seedColor: AppColors.primary,
    ),
    useMaterial3: true,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        surfaceTintColor: AppColors.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        elevation: 5
      ),
    ),
  );
}