import 'package:aqsa_noor_project/models/notification.dart';
import 'package:flutter/material.dart';

class DynamicListViewBuilderDemo extends StatelessWidget {
  DynamicListViewBuilderDemo({super.key});

  List<NotificationModel> notificationList = [
    NotificationModel(
        title: 'First Notification',
        description: 'First Description',
        image: 'assets/images/1.png'),
    NotificationModel(
        title: 'Second Notification',
        description: 'Second Description',
        image: 'assets/images/1.png'),
    NotificationModel(
        title: 'Third Notification',
        description: 'Third Description',
        image: 'assets/images/1.png'),
    NotificationModel(
        title: 'Fourth Notification',
        description: 'Fourth Description',
        image: 'assets/images/1.png'),    NotificationModel(
        title: 'Fifth Notification',
        description: 'Fifth Description',
        image: 'assets/images/1.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dynamic List View Builder Demo"),
      ),
      body: ListView.builder(
          itemCount: notificationList.length,
          itemBuilder: (context, i) {
            return ListTile(
              leading: const Icon(Icons.notifications),
              title: Text(notificationList[i].title.toString()),
              subtitle: Text(notificationList[i].description.toString()),
              // tileColor: Colors.blue,
            );
          }),
    );
  }
}
