import 'package:flutter/material.dart';
import 'package:food_craft/constants/app_colors.dart';

class ThemeInput {
  static const inputDecoration = InputDecorationTheme(
    contentPadding: EdgeInsets.all(12),
    fillColor: AppColors.white,
    filled: true,
    border: OutlineInputBorder(),
    hintStyle: TextStyle(
      fontSize: 14,
      color: AppColors.grey,
    ),
    iconColor: AppColors.grey,
  );
}
