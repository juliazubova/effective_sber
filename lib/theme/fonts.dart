import 'package:flutter/material.dart';
import 'colors.dart';

abstract class AppFonts {
  static const titleLarge = TextStyle(
    fontFamily: 'SF Pro Display',
    fontWeight: FontWeight.w700,
    fontSize: 24,
    color: AppColors.textPrimary
  );
  static const titleMedium = TextStyle(
    fontFamily: 'SF Pro Text',
    fontWeight: FontWeight.w700,
    fontSize: 20,
    color: AppColors.textPrimary
  );
  static final bodySmall = TextStyle(
    fontFamily: 'SF Pro Text',
    fontWeight: FontWeight.w500,
    fontSize: 14,
    color: AppColors.textSecondary,
  );
}