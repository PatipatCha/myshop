import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_myshop/pages/LoginScreen.dart';
import 'package:splashscreen/splashscreen.dart';

bool _isConnected;
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  var images = "assets/images/myshop.png";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyShop',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: SplashScreen(
          seconds: 3,
          navigateAfterSeconds: LoginScreen(),
          image: Image.asset(images),
          backgroundColor: Colors.orange,
          styleTextUnderTheLoader: new TextStyle(),
          photoSize: 100.0,
          loaderColor: Colors.red),
    );
  }
}
