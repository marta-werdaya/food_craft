import 'package:flutter/material.dart';
import 'package:food_craft/constants/app_colors.dart';

class DetailProductPage extends StatelessWidget {
  const DetailProductPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      title: const Text(
        'Wishlist',
        style: TextStyle(
          color: AppColors.primary,
        ),
      ),
      centerTitle: true,
    ));
  }
}
