import 'package:flutter/material.dart';
import 'package:food_craft/constants/app_assets.dart';
import 'package:food_craft/model/food_model.dart';

import '../constants/app_colors.dart';
import '../pages/detail_product_page.dart';
import 'heart_widget.dart';

class ProductItem extends StatelessWidget {
  final FoodModel foods;
  const ProductItem({
    Key? key,
    required this.foods,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailProductPage(food: foods),
          ),
        );
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
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(4),
                    topLeft: Radius.circular(4),
                  ),
                  child: Image.asset(
                    foods.imageUrl,
                    height: 133,
                    width: 168,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(12.0),
                  child: HeartWidget(),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    foods.name,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          const Icon(
                            Icons.attach_money,
                            color: AppColors.secondary,
                            size: 20,
                          ),
                          Text(foods.price.toString()),
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
                          Text(foods.rating),
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
