import 'package:flutter/material.dart';
import 'package:flutter_myshop/pages/LoginScreen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingScreen extends StatefulWidget {
  @override
  _SettingScreenState createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  void initState() {
    super.initState();
    print('setting page');
  }

  clearData() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    await preferences.clear();
  }

  @override
  Widget build(BuildContext context) {
    var logoutButton = ElevatedButton(
      onPressed: () {
        clearData();
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => LoginScreen()),
        );
      },
      child: Text('Logout'),
    );
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
              'Setting Menu',
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 20,
            ),
            logoutButton,
          ],
        ),
      ),
    );
  }
}
