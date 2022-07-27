import 'package:flutter/material.dart';

import '../constants/app_colors.dart';

class ThemeColor {
  static final colorScheme = ColorScheme.fromSeed(
    seedColor: AppColors.primary,
    brightness: Brightness.dark,
    primary: AppColors.primary,
    onPrimary: AppColors.bg,
  );
}
