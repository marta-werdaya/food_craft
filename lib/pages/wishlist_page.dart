import 'package:flutter/material.dart';
import 'package:food_craft/constants/app_colors.dart';

import '../widgets/list_item.dart';
import '../widgets/text_app_bar.dart';

class WishList extends StatelessWidget {
  const WishList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.bg,
        shadowColor: Colors.transparent,
        title: const TextAppBar(
          title: 'Wishlist',
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          child: Column(
            children: const [
              ListItem(),
              ListItem(),
              ListItem(),
              ListItem(),
              ListItem(),
            ],
          ),
        ),
      ),
    );
  }
}
