import 'package:flutter/material.dart';
import 'package:food_craft/pages/home_page.dart';
import 'package:food_craft/themes/theme_button.dart';
import 'package:food_craft/themes/theme_color.dart';
import 'package:food_craft/themes/theme_input.dart';

import 'constants/app_colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ThemeColor.colorScheme,
        inputDecorationTheme: ThemeInput.inputDecoration,
        textTheme: const TextTheme(),
        elevatedButtonTheme: ThemeButton.elevatedButton,
        textButtonTheme: ThemeButton.textButton,
        outlinedButtonTheme: ThemeButton.outlinedButton,
        scaffoldBackgroundColor: AppColors.bg,
        shadowColor: AppColors.primary,
        errorColor: AppColors.error,
      ),
      home: const HomePage(),
    );
  }
}
