import 'package:flutter/material.dart';
import 'package:food_craft/constants/app_assets.dart';
import 'package:food_craft/constants/app_colors.dart';
import 'package:food_craft/pages/cart_page.dart';
import 'package:food_craft/pages/home_page.dart';
import 'package:food_craft/pages/notification_page.dart';
import 'package:food_craft/pages/wishlist_page.dart';

import '../widgets/icon_display.dart';

class CustomBottomNavigation extends StatefulWidget {
  const CustomBottomNavigation({Key? key}) : super(key: key);

  @override
  State<CustomBottomNavigation> createState() => _BottomNavigationBarState();
}

int currentIndex = 0;

List pages = [
  const HomePage(),
  const WishList(),
  const NotificationPage(),
  const CartPage(),
];

class _BottomNavigationBarState extends State<CustomBottomNavigation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        unselectedItemColor: AppColors.grey,
        selectedItemColor: AppColors.secondary,
        onTap: (index) => setState(
          () {
            currentIndex = index;
          },
        ),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: IconDisplay(path: AppAssets.iconHome),
            activeIcon: IconDisplay(path: AppAssets.iconHomeActive),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: IconDisplay(path: AppAssets.iconWishlist),
            activeIcon: IconDisplay(path: AppAssets.iconWishlistActive),
            label: 'Wishlist',
          ),
          BottomNavigationBarItem(
            icon: IconDisplay(path: AppAssets.iconNotification),
            activeIcon: IconDisplay(path: AppAssets.iconNotificationActive),
            label: 'Notification',
          ),
          BottomNavigationBarItem(
            icon: IconDisplay(path: AppAssets.iconCart),
            activeIcon: IconDisplay(path: AppAssets.iconCartActive),
            label: 'Cart',
          ),
        ],
      ),
    );
  }
}
