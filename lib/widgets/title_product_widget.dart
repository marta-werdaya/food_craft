import 'package:flutter/material.dart';

import '../constants/app_colors.dart';

class TitleProductWidget extends StatelessWidget {
  const TitleProductWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16, right: 18, left: 18),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            'Pizza',
            style: TextStyle(
              color: AppColors.primary,
              fontSize: 26,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            'Warung Indah Sejahtera',
            style: TextStyle(
              color: AppColors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
