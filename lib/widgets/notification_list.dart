import 'package:flutter/material.dart';
import 'package:food_craft/model/notification_model.dart';

import '../constants/app_colors.dart';

class NotificationList extends StatelessWidget {
  final NotificationModel notif;
  const NotificationList({
    Key? key,
    required this.notif,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      margin: const EdgeInsets.only(bottom: 8),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(4),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            notif.title,
            style: const TextStyle(
              color: AppColors.primary,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            notif.desc,
            style: const TextStyle(
              color: AppColors.black,
            ),
          ),
        ],
      ),
    );
  }
}
