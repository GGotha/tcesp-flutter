import 'dart:convert';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:tcesp/screens/home_screen.dart';
import 'package:tcesp/screens/portal_details_screen.dart';
import 'package:tcesp/screens/splash_screen.dart';
import 'package:http/http.dart' as http;

final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
    FlutterLocalNotificationsPlugin();
void main() async {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final FirebaseMessaging firebaseMessaging = FirebaseMessaging();
  final List<Message> messages = [];

  final AndroidNotificationChannel channel = AndroidNotificationChannel(
    'high_importance_channel',
    'High Importance Notifications',
    'This channel is used for important notifications.',
    importance: Importance.high,
  );
  @override
  void initState() {
    super.initState();
    var initialzationSettingsAndroid =
        AndroidInitializationSettings('@mipmap/ic_launcher');
    var initializationSettings =
        InitializationSettings(android: initialzationSettingsAndroid);

    flutterLocalNotificationsPlugin.initialize(initializationSettings);

    firebaseMessaging.configure(
      onMessage: (Map<String, dynamic> message) async {
        final notification = message['notification'];

        flutterLocalNotificationsPlugin.show(
            1,
            notification['title'],
            notification['body'],
            NotificationDetails(
              android: AndroidNotificationDetails(
                channel.id,
                channel.name,
                channel.description,
              ),
            ));
      },
      onLaunch: (Map<String, dynamic> message) async {},
      onResume: (Map<String, dynamic> message) async {},
    );
    firebaseMessaging.requestNotificationPermissions(
        const IosNotificationSettings(sound: true, badge: true, alert: true));

    WidgetsBinding.instance.addPostFrameCallback((_) {
      final token = getToken();

      postNotify(token);
    });
  }

  Future<String> getToken() async {
    FirebaseMessaging firebaseMessaging = FirebaseMessaging();

    return await firebaseMessaging.getToken();
  }

  postNotify(token) async {
    try {
      final tokenFormatted = await token;

      var url = Uri.parse('https://fcm.googleapis.com/fcm/send');

      await http.post(url,
          headers: {
            "Content-Type": "application/json",
            "Authorization":
                "key=AAAA4siCy2w:APA91bFS_rPAStOTWh6WGoAov5f3nTly4aryt9dnS1a9PxFKEkOowIS2svyx39brvl0EYSVrbXltgUKuzdkmchqjKy-2nBIaCJiwzUWQZ-0ydSkiOCSZnSNboi35UbwxzAnqUpTnblWr"
          },
          body: jsonEncode({
            "to": tokenFormatted,
            "notification": {
              "title": "Bem-vindo ao TCESP",
              "body": "Cheque as mais novas novidades aqui!",
              "mutable_content": true,
              "sound": "Tri-tone"
            },
          }));
    } catch (e) {
      return;
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TCESP',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: "/",
      routes: {
        "/": (context) => SplashScreen(),
        "/home": (context) => HomeScreen(),
        "/details": (context) => PortalDetailsScreen(),
      },
    );
  }
}
