import 'dart:io';
import 'dart:math';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class NotificationService {
  FirebaseMessaging messaging = FirebaseMessaging.instance;
  final FlutterLocalNotificationsPlugin _flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();

  void requestNotificationServices() async {
    NotificationSettings settings = await messaging.requestPermission(
      alert: true,
      announcement: true,
      badge: true,
      carPlay: true,
      criticalAlert: true,
      provisional: true,
      sound: true,
    );

    if (settings.authorizationStatus == AuthorizationStatus.authorized) {
      print("user granted permission");
    } else if (settings.authorizationStatus ==
        AuthorizationStatus.provisional) {
      print("user granted provisional permission");
    } else {
      print("user denied permission");
    }
  }



  void initLocalNotifictionPression(
      RemoteMessage message) async {
    var androidIntilizationSetting =
        const AndroidInitializationSettings("@mipmap/ic_launcher");
    var iosIntilizationSetting = const DarwinInitializationSettings();

    var initializationSettings = InitializationSettings(
        android: androidIntilizationSetting, iOS: iosIntilizationSetting);

    await _flutterLocalNotificationsPlugin.initialize(initializationSettings,
        onDidReceiveNotificationResponse: (payload)  {
          
        });
  }

  void fairbaseinit() {
    FirebaseMessaging.onMessage.listen((message) {
      if (kDebugMode) {
        print(message.notification!.title.toString());
        print(message.notification!.body.toString());
      }
           if (Platform.isAndroid) {
        initLocalNotifictionPression( message);
        showNotification(message);
      }
      // showNotification(message);
    });
  }


// Random.secure().nextInt(10000).toString(),
// "My Notification channel"
  Future<void> showNotification(RemoteMessage message) async {

    AndroidNotificationChannel channel =  AndroidNotificationChannel(
      Random.secure().nextInt(10000).toString(),
      "High notification channel",
      importance: Importance.max
    );

    AndroidNotificationDetails androidNotificationDetails = AndroidNotificationDetails(
      channel.id.toString(),
      channel.name.toString(),
      channelDescription: "My Channel description",
      importance: Importance.high,
      priority: Priority.high,
      ticker: "ticker"
      );


      DarwinNotificationDetails darwinNotificationDetails = DarwinNotificationDetails(
        presentAlert: true,
        presentBadge: true,
        presentSound: true,
      );

      NotificationDetails notificationDetails = NotificationDetails(
        android: androidNotificationDetails,
        iOS: darwinNotificationDetails,
      );



     Future.delayed(Duration.zero,(){
        _flutterLocalNotificationsPlugin.show(
      0, 
      message.notification!.title.toString(), 
      message.notification!.body.toString(),
    
      notificationDetails
      );
     }
     
    );
  }



  Future<String> getDeviceToken() async {
    String? token = await messaging.getToken();
    return token!;
  }

  void isTokenRefresh() async {
    messaging.onTokenRefresh.listen((event) {
      event.toString();
      print("Refresh");
    });
  }
}
