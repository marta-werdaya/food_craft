import 'package:flutter/material.dart';
import 'package:food_craft/pages/home_page.dart';
import 'package:food_craft/themes/theme_color.dart';

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
      ),
      home: const HomePage(),
    );
  }
}
