import 'package:flutter/material.dart';

class HiScreen extends StatefulWidget {
  @override
  _HiScreenState createState() => _HiScreenState();
}

class _HiScreenState extends State<HiScreen> {
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
              'Welcome',
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
