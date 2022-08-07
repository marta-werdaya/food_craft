import 'package:flutter/material.dart';

import '../constants/app_colors.dart';

class TitleProductWidget extends StatelessWidget {
  final String foodName;
  final String seller;
  const TitleProductWidget(
      {Key? key, required this.foodName, required this.seller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16, right: 18, left: 18),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            foodName,
            style: const TextStyle(
              color: AppColors.primary,
              fontSize: 26,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            seller,
            style: const TextStyle(
              color: AppColors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
