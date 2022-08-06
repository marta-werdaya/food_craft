import 'package:flutter/material.dart';

import 'icon_display.dart';

class TextIconWidget extends StatelessWidget {
  final String text;
  final String icon;
  const TextIconWidget({
    Key? key,
    required this.text,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 32, left: 18, right: 18),
      child: Row(
        children: [
          IconDisplay(
            path: icon,
            size: 18.0,
          ),
          const SizedBox(
            width: 8,
          ),
          Text(
            text,
          )
        ],
      ),
    );
  }
}
