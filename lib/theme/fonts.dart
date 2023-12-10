import 'package:flutter/material.dart';
import 'colors.dart';

abstract class AppFonts {
  static const titleLarge = TextStyle(
    fontFamily: 'SF Pro Display',
    fontWeight: FontWeight.w700,
    fontSize: 24,
    letterSpacing: -0.7,
    color: AppColors.textPrimary
  );
  static const titleMedium = TextStyle(
    fontFamily: 'SF Pro Text',
    fontWeight: FontWeight.w700,
    fontSize: 20,
    color: AppColors.textPrimary,
    letterSpacing: -0.7
  );
  static const titleSmall = TextStyle(
    fontFamily: 'SF Pro Text',
    fontWeight: FontWeight.w500,
    fontSize: 16,
    color: AppColors.textPrimary,
    letterSpacing: -0.4
  );
  static final bodyLarge = TextStyle(
    fontFamily: 'SF Pro Text',
    fontWeight: FontWeight.w500,
    fontSize: 16,
    color: AppColors.textSecondary,
    letterSpacing: -0.4
  );

  static final bodyMedium = TextStyle(
    fontFamily: 'SF Pro Text',
    fontWeight: FontWeight.w500,
    fontSize: 16,
    color: AppColors.textSecondary,
    letterSpacing: -0.4
  );
  static final bodySmall = TextStyle(
    fontFamily: 'SF Pro Text',
    fontWeight: FontWeight.w500,
    fontSize: 14,
    letterSpacing: -0.4,
    color: AppColors.textSecondary,
  );
  static const titleVerySmall = TextStyle(
    fontFamily: 'SF_Pro_Text',
    fontWeight: FontWeight.w500,
    fontSize: 14,
    color: AppColors.textPrimary,
    letterSpacing: -0.4,
  );
}