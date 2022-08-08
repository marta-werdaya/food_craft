import 'package:flutter/material.dart';
import 'package:food_craft/data/k_test_cart.dart';
import 'package:food_craft/widgets/list_item.dart';

import '../constants/app_colors.dart';
import '../widgets/text_app_bar.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var cartAll = kTestCart;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.bg,
        shadowColor: Colors.transparent,
        title: const TextAppBar(
          title: 'Cart',
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          child: Column(
            children: [
              for (int i = 0; i < cartAll.length; i++)
                ListItem(
                  isCart: true,
                  idFood: cartAll[i].id,
                  total: cartAll[i].totalItem,
                ),
              const SizedBox(
                height: 16,
              ),
              const OrderDetail(
                name: 'Total Item (4)',
                value: '\$ 9.20',
              ),
              const OrderDetail(
                name: 'Delivery fee',
                value: '\$ 2.00',
              ),
              const Divider(
                height: 2,
                thickness: 0.5,
                color: AppColors.grey,
              ),
              const SizedBox(height: 16),
              const OrderDetail(
                name: 'Total',
                value: '\$ 11.20',
              ),
              SizedBox(
                height: 58,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text(
                    'Checkout',
                    style: TextStyle(
                      color: AppColors.bg,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class OrderDetail extends StatelessWidget {
  final String name;
  final String value;
  const OrderDetail({
    Key? key,
    required this.name,
    required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            name,
            style: const TextStyle(
              color: AppColors.grey,
            ),
          ),
          Text(
            value,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              color: AppColors.primary,
            ),
          ),
        ],
      ),
    );
  }
}
