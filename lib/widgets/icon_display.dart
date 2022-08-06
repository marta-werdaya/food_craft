import 'package:flutter/material.dart';

class IconDisplay extends StatelessWidget {
  final String path;
  final double size;
  const IconDisplay({
    Key? key,
    required this.path,
    this.size = 24.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      path,
      width: size,
    );
  }
}
