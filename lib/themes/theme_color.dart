import 'package:flutter/material.dart';

import '../constants/app_colors.dart';

class ThemeColor {
  static final colorScheme = ColorScheme.fromSeed(
    seedColor: AppColors.secondary,
    brightness: Brightness.light,
    primary: AppColors.primary,
    onPrimary: AppColors.bg,
    secondary: AppColors.secondary,
    onSecondary: AppColors.black,
    background: AppColors.black,
    onBackground: AppColors.black,
  );
}
