import 'package:flutter/material.dart';
import 'package:tcesp/screens/home_screen.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future.delayed(
      Duration(milliseconds: 3000),
      () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => HomeScreen()),
        );
      },
    );

    return Container(
      color: Colors.white,
      child: Center(
        child: Image(
          image: AssetImage('assets/images/logo_tcesp.png'),
        ),
      ),
    );
  }
}
