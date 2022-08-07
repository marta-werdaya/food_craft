import 'package:flutter/material.dart';
import 'package:food_craft/widgets/title_widget.dart';

import '../constants/app_colors.dart';

class DescriptionWidget extends StatelessWidget {
  final String text;
  const DescriptionWidget({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        TitleWidget(
          title: 'Description',
          isSeeAll: false,
        ),
        Padding(
          padding: EdgeInsets.only(left: 18, right: 18, bottom: 32),
          child: Text(
            'Amet minim mollit non  ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet. Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint.',
            style: TextStyle(
              fontSize: 13,
              color: AppColors.black,
            ),
          ),
        ),
      ],
    );
  }
}
