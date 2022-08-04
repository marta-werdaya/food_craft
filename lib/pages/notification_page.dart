import 'package:flutter/material.dart';

import '../constants/app_colors.dart';
import '../widgets/text_app_bar.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.bg,
        shadowColor: Colors.transparent,
        title: const TextAppBar(
          title: 'Notification',
        ),
      ),
    );
  }
}
