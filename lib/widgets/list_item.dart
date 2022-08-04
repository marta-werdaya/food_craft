import 'package:flutter/material.dart';
import 'package:food_craft/widgets/total_item_widget.dart';

import '../constants/app_colors.dart';

class ListItem extends StatelessWidget {
  final bool isCart;
  const ListItem({
    Key? key,
    this.isCart = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
          Image.asset(
            'assets/images/pizza_square.png',
            height: 104,
          ),
          SizedBox(
            height: 104,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Nasi Goreng',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: AppColors.primary,
                  ),
                ),
                const Text(
                  'Warung Indah Sejahtera',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
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
          )
        ],
      ),
    );
  }
}
