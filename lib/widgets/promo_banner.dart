import 'package:flutter/material.dart';

import '../constants/app_colors.dart';

class PromoBanner extends StatelessWidget {
  const PromoBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 18, right: 18, bottom: 32),
      child: SizedBox(
        child: Stack(
          alignment: Alignment.centerLeft,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: Image.asset('assets/images/food_banner.png'),
            ),
            Container(
              height: 134,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [AppColors.primary, AppColors.primary.withOpacity(0)],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: RichText(
                text: const TextSpan(
                  style: TextStyle(
                    fontSize: 26.0,
                    fontWeight: FontWeight.bold,
                  ),
                  text: 'Get Up To\n',
                  children: [
                    TextSpan(
                      text: '25% Off',
                      style: TextStyle(
                        color: AppColors.secondary,
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
