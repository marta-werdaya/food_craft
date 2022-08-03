import 'package:flutter/material.dart';
import 'package:food_craft/constants/app_colors.dart';

import '../widgets/brand_logo.dart';
import '../widgets/category_widget.dart';
import '../widgets/search_widget.dart';
import '../widgets/title_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            const BrandLogo(),
            const SearchWidget(),
            const CategoryButton(),
            const TitleWidget(title: 'Promo'),
            const PromoBanner(),
            const TitleWidget(title: '🔥 Hot Menu This Week'),
            Padding(
              padding: const EdgeInsets.only(left: 18, right: 18, bottom: 32),
              child: Wrap(
                spacing: 18,
                runSpacing: 24,
                children: const [
                  ProductItem(),
                  ProductItem(),
                  ProductItem(),
                  ProductItem(),
                  ProductItem(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ProductItem extends StatelessWidget {
  const ProductItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
                child: Icon(
                  Icons.favorite_border,
                  color: AppColors.bg,
                ),
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
                          'assets/icons/star.png',
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
    );
  }
}

class PromoBanner extends StatelessWidget {
  const PromoBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 18, right: 18, bottom: 32),
      child: SizedBox(
        child: Stack(
          alignment: Alignment.centerLeft,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: Image.asset('assets/images/food_banner.png'),
            ),
            Container(
              height: 134,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [AppColors.primary, AppColors.primary.withOpacity(0)],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: RichText(
                text: const TextSpan(
                  style: TextStyle(
                    fontSize: 26.0,
                    fontWeight: FontWeight.bold,
                  ),
                  text: 'Get Up To\n',
                  children: [
                    TextSpan(
                      text: '25% Off',
                      style: TextStyle(
                        color: AppColors.secondary,
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
