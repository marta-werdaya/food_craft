import 'package:flutter/material.dart';
import 'package:food_craft/data/k_test_food.dart';
import 'package:food_craft/pages/detail_product_page.dart';
import 'package:food_craft/widgets/total_item_widget.dart';

import '../constants/app_colors.dart';

class ListItem extends StatelessWidget {
  final bool isCart;
  final int idFood;
  const ListItem({
    Key? key,
    required this.idFood,
    this.isCart = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final food = kTestFoods.firstWhere((food) => food.id == idFood);
    return GestureDetector(
      onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => DetailProductPage(food: food))),
      child: Container(
        padding: const EdgeInsets.all(8),
        margin: const EdgeInsets.only(bottom: 16),
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(4),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: Image.asset(
                food.imageSquareUrl,
                height: 104,
                width: 104,
              ),
            ),
            const SizedBox(
              width: 16,
            ),
            Expanded(
              child: SizedBox(
                height: 110,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      food.name,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        overflow: TextOverflow.clip,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: AppColors.primary,
                      ),
                    ),
                    Text(
                      food.seller,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        color: AppColors.grey,
                      ),
                    ),
                    const Spacer(),
                    isCart
                        ? const TotalItemWidget()
                        : ElevatedButton(
                            onPressed: () {},
                            child: const Text('checkout'),
                          )
                  ],
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: AppColors.error50,
                borderRadius: BorderRadius.circular(4),
              ),
              padding: const EdgeInsets.all(8),
              child: const Icon(
                Icons.delete_outline,
                color: AppColors.error,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
