import 'package:flutter/material.dart';

import '../constants/app_colors.dart';

class PriceWidget extends StatelessWidget {
  const PriceWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Text(
          'Price',
          style: TextStyle(
            color: AppColors.grey,
          ),
        ),
        Text(
          '\$ 21.00',
          style: TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.bold,
            color: AppColors.secondary,
          ),
        )
      ],
    );
  }
}
