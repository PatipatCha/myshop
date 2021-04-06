import 'package:flutter/material.dart';

class NotConnectedScreen extends StatefulWidget {
  @override
  _NotConnectedScreenState createState() => _NotConnectedScreenState();
}

class _NotConnectedScreenState extends State<NotConnectedScreen> {
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
              "assets/images/disconnect.png",
              width: 70,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Please check you network connection',
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
