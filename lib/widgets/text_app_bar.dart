import 'package:flutter/material.dart';

import '../constants/app_colors.dart';

class TextAppBar extends StatelessWidget {
  final String title;
  const TextAppBar({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(
        color: AppColors.primary,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
