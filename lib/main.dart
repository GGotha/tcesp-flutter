import 'package:flutter/material.dart';
import 'package:tcesp/screens/home_screen.dart';
import 'package:tcesp/screens/portal_details_screen.dart';
import 'package:tcesp/screens/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
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
