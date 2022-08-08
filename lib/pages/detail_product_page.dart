import 'package:flutter/material.dart';
import 'package:food_craft/constants/app_assets.dart';
import 'package:food_craft/constants/app_colors.dart';
import 'package:food_craft/model/food_model.dart';
import 'package:food_craft/widgets/custom_icon_button.dart';
import 'package:food_craft/widgets/total_item_widget.dart';

import '../data/k_test_cart.dart';
import '../widgets/description_widget.dart';
import '../widgets/divider_widget.dart';
import '../widgets/image_banner.dart';
import '../widgets/price_widget.dart';
import '../widgets/text_app_bar.dart';
import '../widgets/text_icon_widget.dart';
import '../widgets/title_product_widget.dart';

class DetailProductPage extends StatelessWidget {
  final FoodModel food;
  const DetailProductPage({
    Key? key,
    required this.food,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cart = kTestCart.firstWhere((item) => item.id == food.id);

    return Scaffold(
      backgroundColor: AppColors.white,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        excludeHeaderSemantics: false,
        foregroundColor: AppColors.bg,
        backgroundColor: AppColors.transparent,
        shadowColor: Colors.transparent,
        title: const TextAppBar(
          title: 'Detail',
          isWhite: true,
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ImageBanner(
              imageUrl: food.imageUrl,
            ),
            Container(
              color: AppColors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const DividerWidget(),
                  TitleProductWidget(
                    foodName: food.name,
                    seller: food.seller,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextIconWidget(
                        text: '${food.rating}/5',
                        icon: AppAssets.iconStar,
                      ),
                      TextIconWidget(
                        text: '${food.location} Km',
                        icon: AppAssets.iconLocation,
                      ),
                      TextIconWidget(
                        text: '${food.time} min',
                        icon: AppAssets.iconTime,
                      ),
                    ],
                  ),
                  DescriptionWidget(
                    text: food.desc,
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 18, right: 18, bottom: 32),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        PriceWidget(
                          price: food.price,
                        ),
                        TotalItemWidget(
                          id: food.id,
                          total: cart.totalItem,
                        ),
                      ],
                    ),
                  ),
                  const CustomIconButton()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
