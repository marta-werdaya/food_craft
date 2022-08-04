import 'package:flutter/material.dart';

import '../constants/app_colors.dart';
import '../widgets/list_item.dart';
import '../widgets/text_app_bar.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
            children: const [
              ListItem(
                isCart: true,
              ),
              ListItem(
                isCart: true,
              ),
              ListItem(
                isCart: true,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
