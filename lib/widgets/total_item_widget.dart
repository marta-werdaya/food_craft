import 'package:flutter/material.dart';
import 'package:food_craft/widgets/icon_display.dart';

class TotalItemWidget extends StatefulWidget {
  final int id;
  int total;
  TotalItemWidget({
    Key? key,
    required this.id,
    this.total = 0,
  }) : super(key: key);

  @override
  State<TotalItemWidget> createState() => _TotalItemWidgetState();
}

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
                  if (widget.total != 0) {
                    widget.total--;
                  }
                });
              },
              child: const IconDisplay(path: 'assets/icons/minus.png')),
          Text(
            widget.total.toString(),
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          GestureDetector(
              onTap: () {
                setState(() {
                  widget.total++;
                });
              },
              child: const IconDisplay(path: 'assets/icons/plus.png')),
        ],
      ),
    );
  }
}
