import 'package:flutter/material.dart';
import 'package:testap/Views/notification_service.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  NotificationService notificationService = NotificationService();
  @override
  void initState() {
    notificationService.requestNotificationServices();
    notificationService.fairbaseinit();
    notificationService.isTokenRefresh();
    
    notificationService.getDeviceToken().then((value){
      print("Device token");
      print(value);
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("Firebase Notification"),
      ),
    );
  }
}