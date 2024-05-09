import 'package:schedulling_notification_app/services/notification_service.dart';
import 'package:schedulling_notification_app/widgets/notification_button.dart';
import 'package:schedulling_notification_app/widgets/top_bar.dart';
import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFD0F0C0),  
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Theme.of(context).primaryColor,
              Colors.grey[200]!,
            ],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const TopBar(title: 'Scheduling & Notification App'),
            NotificationButton(
              text: "Normal Notification",
              onPressed: () async {
                await NotificationService.showNotification(
                  title: "Normal Notification",
                  body: "This is a standard notification.",
                );
              },
            ),
            NotificationButton(
              text: "Notification With Summary",
              onPressed: () async {
                await NotificationService.showNotification(
                  title: "Summary Notification",
                  body: "This notification includes a summary.",
                  summary: "Notification Summary Here",
                  notificationLayout: NotificationLayout.Inbox,
                );
              },
            ),
            NotificationButton(
              text: "Progress Bar Notification",
              onPressed: () async {
                await NotificationService.showNotification(
                  title: "Progress Notification",
                  body: "This notification includes a progress bar.",
                  summary: "Progress: 50% Completed",
                  notificationLayout: NotificationLayout.ProgressBar,
                );
              },
            ),
            NotificationButton(
              text: "Message Notification",
              onPressed: () async {
                await NotificationService.showNotification(
                  title: "Message Notification",
                  body: "You have received a new message.",
                  summary: "Message from John Doe",
                  notificationLayout: NotificationLayout.Messaging,
                );
              },
            ),
            NotificationButton(
              text: "Big Image Notification",
              onPressed: () async {
                await NotificationService.showNotification(
                  title: "Image Notification",
                  body: "This notification displays a big image.",
                  summary: "Tap to view the image.",
                  notificationLayout: NotificationLayout.BigPicture,
                  bigPicture:
                      "https://files.tecnoblog.net/wp-content/uploads/2019/09/emoji.jpg",
                );
              },
            ),
            NotificationButton(
              text: "Action Buttons Notification",
              onPressed: () async {
                await NotificationService.showNotification(
                  title: "Action Buttons Notification",
                  body: "This notification has action buttons.",
                  payload: {
                    "navigate": "true",
                  },
                  actionButtons: [
                    NotificationActionButton(
                      key: 'check',
                      label: 'Check it out',
                      actionType: ActionType.SilentAction,
                      color: Colors.green,
                    )
                  ]);
              },
            ),
            NotificationButton(
              text: "Scheduled Notification",
              onPressed: () async {
                await NotificationService.showNotification(
                  title: "Scheduled Notification",
                  body: "This notification was scheduled to appear after 5 seconds.",
                  scheduled: true,
                  interval: 5,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
