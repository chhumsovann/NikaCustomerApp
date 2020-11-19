import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nikabooking/widget/notification_widget.dart';

class NotificationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('notification'.tr),
        centerTitle: true,
      ),
      body: NotificationWidget(),
    );
  }
}
