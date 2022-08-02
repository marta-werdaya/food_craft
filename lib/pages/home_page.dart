import 'package:flutter/material.dart';

import '../constants/app_colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: const [
            BrandLogo(),
            SearchWidget(),
            CategoryButton(),
            TitleWidget(),
          ],
        ),
      ),
    );
  }
}

class TitleWidget extends StatelessWidget {
  const TitleWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 18, right: 18, bottom: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Text(
            'Promo',
            style: TextStyle(
              color: AppColors.primary,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            'See All',
            style: TextStyle(
              color: AppColors.secondary,
              fontSize: 13,
            ),
          ),
        ],
      ),
    );
  }
}

class CategoryButton extends StatelessWidget {
  const CategoryButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      margin: const EdgeInsets.only(left: 18, right: 18, bottom: 32),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          ElevatedButton(
            onPressed: () {},
            child: const Text('Indonesian'),
          ),
          const SizedBox(
            width: 16,
          ),
          OutlinedButton(
            onPressed: () {},
            child: const Text('Balinese'),
          ),
          const SizedBox(
            width: 16,
          ),
          OutlinedButton(
            onPressed: () {},
            child: const Text('Japanese'),
          ),
          const SizedBox(
            width: 16,
          ),
          OutlinedButton(
            onPressed: () {},
            child: const Text('Chinese'),
          ),
          const SizedBox(
            width: 16,
          ),
          OutlinedButton(
            onPressed: () {},
            child: const Text('Chinese'),
          ),
        ],
      ),
    );
  }
}

class SearchWidget extends StatelessWidget {
  const SearchWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 18, right: 18, bottom: 16),
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Search',
          prefixIcon: Icon(Icons.search),
        ),
      ),
    );
  }
}

class BrandLogo extends StatelessWidget {
  const BrandLogo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RichText(
            text: const TextSpan(
              text: 'Food',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 26,
                color: AppColors.primary,
              ),
              children: [
                TextSpan(
                  text: ' Craft',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 26,
                    color: AppColors.secondary,
                  ),
                ),
              ],
            ),
          ),
          const Text(
            'Morning, Marta',
            style: TextStyle(
              fontSize: 14,
              color: AppColors.grey,
            ),
          )
        ],
      ),
    );
  }
}
