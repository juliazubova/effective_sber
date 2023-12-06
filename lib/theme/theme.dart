import 'package:flutter/material.dart';
import 'package:sber/theme/fonts.dart';
// import 'package:sber/theme/colors.dart';

class AppTheme {
  static ThemeData themeData = ThemeData(
    textTheme: TextTheme(
      titleLarge: AppFonts.titleLarge,
      titleMedium: AppFonts.titleLarge
    )
  );
}