import 'package:flutter/material.dart';
import 'package:food_craft/widgets/icon_display.dart';

import '../data/k_test_cart.dart';

class TotalItemWidget extends StatefulWidget {
  final id;
  const TotalItemWidget({
    Key? key,
    required this.id,
  }) : super(key: key);

  @override
  State<TotalItemWidget> createState() => _TotalItemWidgetState();
}

int amount = 0;

class _TotalItemWidgetState extends State<TotalItemWidget> {
  @override
  Widget build(BuildContext context) {
    final cartInfo = kTestCart.firstWhere((element) => element.id == widget.id);

    return SizedBox(
      width: 104,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
              onTap: () {
                setState(() {
                  if (amount != 0) {
                    amount--;
                  }
                });
              },
              child: const IconDisplay(path: 'assets/icons/minus.png')),
          Text(
            cartInfo.totalItem.toString(),
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          GestureDetector(
              onTap: () {
                setState(() {
                  amount++;
                });
              },
              child: const IconDisplay(path: 'assets/icons/plus.png')),
        ],
      ),
    );
  }
}
