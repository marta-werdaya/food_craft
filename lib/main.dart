import 'package:flutter/material.dart';
import 'package:food_craft/pages/home_page.dart';
import 'package:food_craft/themes/theme_color.dart';
import 'package:food_craft/themes/theme_input.dart';

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
      ),
      home: const HomePage(),
    );
  }
}
