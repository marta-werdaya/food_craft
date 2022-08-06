import 'package:flutter/material.dart';
import 'package:food_craft/constants/app_assets.dart';

import '../constants/app_colors.dart';
import '../pages/detail_product_page.dart';
import 'heart_widget.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const DetailProductPage()));
      },
      child: Container(
        width: 168,
        decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(4),
            boxShadow: [
              BoxShadow(
                color: AppColors.primary.withOpacity(0.25),
                spreadRadius: 0,
                blurRadius: 12,
              )
            ]),
        child: Column(
          children: [
            Stack(
              alignment: Alignment.topRight,
              children: [
                Image.asset('assets/images/pizza.png'),
                const Padding(
                  padding: EdgeInsets.all(12.0),
                  child: HeartWidget(),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  const Text('Hawaiian Chicken PizzaSmoked'),
                  const SizedBox(
                    height: 12,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: const [
                          Icon(
                            Icons.attach_money,
                            color: AppColors.secondary,
                            size: 20,
                          ),
                          Text('20.00'),
                        ],
                      ),
                      Row(
                        children: [
                          Image.asset(
                            AppAssets.iconStar,
                            width: 14,
                          ),
                          const SizedBox(
                            width: 4,
                          ),
                          const Text('20.00'),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
