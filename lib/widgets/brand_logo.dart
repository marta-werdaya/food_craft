import 'package:flutter/material.dart';
import 'package:food_craft/constants/app_colors.dart';

class BrandLogo extends StatelessWidget {
  const BrandLogo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RichText(
            text: const TextSpan(
              text: 'Food',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 26,
                color: AppColors.primary,
              ),
              children: [
                TextSpan(
                  text: ' Craft',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 26,
                    color: AppColors.secondary,
                  ),
                ),
              ],
            ),
          ),
          const Text(
            'Morning, Marta',
            style: TextStyle(
              fontSize: 14,
              color: AppColors.grey,
            ),
          )
        ],
      ),
    );
  }
}
