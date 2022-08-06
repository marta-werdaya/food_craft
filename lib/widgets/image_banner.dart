import 'package:flutter/material.dart';

import '../constants/app_colors.dart';

class ImageBanner extends StatelessWidget {
  const ImageBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset('assets/images/pizza.png'),
        Container(
          width: double.infinity,
          height: 310,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                AppColors.primary,
                AppColors.primary.withOpacity(0),
              ],
            ),
          ),
        )
      ],
    );
  }
}
