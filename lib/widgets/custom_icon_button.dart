import 'package:flutter/material.dart';

import '../constants/app_assets.dart';
import 'icon_display.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        left: 18,
        right: 18,
        bottom: 32,
      ),
      height: 58,
      child: ElevatedButton(
        onPressed: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            IconDisplay(
              path: AppAssets.iconCart,
              size: 18,
            ),
            SizedBox(
              width: 16,
            ),
            Text(
              'Add To Cart',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            )
          ],
        ),
      ),
    );
  }
}
