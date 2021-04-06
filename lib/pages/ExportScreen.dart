import 'package:flutter/material.dart';

class ExportScreen extends StatefulWidget {
  @override
  _ExportScreenState createState() => _ExportScreenState();
}

class _ExportScreenState extends State<ExportScreen> {
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
              'Export Page',
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
