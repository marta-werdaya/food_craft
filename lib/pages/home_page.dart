import 'package:flutter/material.dart';

import '../widgets/brand_logo.dart';
import '../widgets/category_widget.dart';
import '../widgets/product_item.dart';
import '../widgets/promo_banner.dart';
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
