import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Image.asset(
              "assets/images/flutter-logo.png",
              width: 70,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Welcome Home',
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
