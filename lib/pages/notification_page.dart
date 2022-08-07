import 'package:flutter/material.dart';
import 'package:food_craft/data/k_test_notification.dart';

import '../constants/app_colors.dart';
import '../widgets/date_text.dart';
import '../widgets/notification_list.dart';
import '../widgets/text_app_bar.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var notifications = kTestNotification;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.bg,
        shadowColor: Colors.transparent,
        title: const TextAppBar(
          title: 'Notification',
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const DateText(
                date: '12 Juli 2022',
              ),
              for (int i = 0; i < notifications.length; i++)
                NotificationList(
                  notif: notifications[i],
                ),
            ],
          ),
        ),
      ),
    );
  }
}
