import 'package:schedulling_notification_app/pages/home_page.dart';
import 'package:schedulling_notification_app/services/notification_service.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await NotificationService.initializeNotification();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  static GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: navigatorKey,
      title: 'Scheduling & Notification Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
        primaryColor: const Color(0xFFD0F0C0), 
        shadowColor: const Color(0xFFA0C0A0),  
      ),
      home: const HomeScreen(),
    );
  }
}