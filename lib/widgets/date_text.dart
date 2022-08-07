import 'package:flutter/material.dart';

import '../constants/app_colors.dart';

class DateText extends StatelessWidget {
  final String date;
  const DateText({
    Key? key,
    required this.date,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Text(
        date,
        style: const TextStyle(
          color: AppColors.secondary,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
