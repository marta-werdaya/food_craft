import 'package:flutter/material.dart';
import 'package:food_craft/data/k_test_food.dart';
import 'package:food_craft/widgets/total_item_widget.dart';

import '../constants/app_colors.dart';
import '../pages/detail_product_page.dart';

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
    return Container(
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
          GestureDetector(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetailProductPage(food: food),
              ),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: Image.asset(
                food.imageSquareUrl,
                height: 104,
                width: 104,
              ),
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
                      ? TotalItemWidget(
                          id: food.id,
                        )
                      : ElevatedButton(
                          onPressed: () {},
                          child: const Text('checkout'),
                        )
                ],
              ),
            ),
          ),
          TextButton(
            style: TextButton.styleFrom(
              backgroundColor: AppColors.error50,
            ),
            onPressed: () {},
            child: const Icon(
              Icons.delete_outline,
              color: AppColors.error,
            ),
          ),
        ],
      ),
    );
  }
}
