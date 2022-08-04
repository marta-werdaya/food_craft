import 'package:flutter/material.dart';
import 'package:food_craft/widgets/icon_display.dart';

class TotalItemWidget extends StatefulWidget {
  const TotalItemWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<TotalItemWidget> createState() => _TotalItemWidgetState();
}

int amount = 0;

class _TotalItemWidgetState extends State<TotalItemWidget> {
  @override
  Widget build(BuildContext context) {
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
            amount.toString(),
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
