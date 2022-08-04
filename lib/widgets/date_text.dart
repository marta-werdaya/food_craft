import 'package:flutter/material.dart';

import '../constants/app_colors.dart';

class DateText extends StatelessWidget {
  const DateText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(bottom: 16),
      child: Text(
        '12 Juli 2022',
        style: TextStyle(
          color: AppColors.secondary,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
