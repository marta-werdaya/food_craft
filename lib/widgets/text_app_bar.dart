import 'package:flutter/material.dart';

import '../constants/app_colors.dart';

class TextAppBar extends StatelessWidget {
  final String title;
  final bool isWhite;
  const TextAppBar({
    Key? key,
    required this.title,
    this.isWhite = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        color: isWhite ? AppColors.bg : AppColors.primary,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
