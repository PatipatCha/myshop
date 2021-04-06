import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_myshop/pages/Chart/BarChartScreen.dart';
import 'package:flutter_myshop/pages/Chart/LineChartScreen.dart';
import 'package:flutter_myshop/pages/Chart/PieChartScreen.dart';
import 'package:flutter_myshop/pages/Drag/exDrag.dart';

import 'package:flutter_myshop/pages/ExportScreen.dart';
import 'package:flutter_myshop/pages/HiScreen.dart';
import 'package:flutter_myshop/pages/HomeScreen.dart';
import 'package:flutter_myshop/pages/SettingScreen.dart';
import 'package:flutter_myshop/pages/rmxlite/rmxmenu.dart';

class MainMenuScreen extends StatefulWidget {
  @override
  _MainMenuScreenState createState() => _MainMenuScreenState();
}

class _MainMenuScreenState extends State<MainMenuScreen> {
  int _currentIndex = 1;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.w500);
  final List<Widget> _children = [
    HomeScreen(),
    rmxMenu(),
    exDrag(),
    SettingScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('MyShop'),
      ),
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        selectedItemColor: Colors.black,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text(
              'Home',
            ),
            backgroundColor: Colors.teal,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_rounded),
            title: Text(
              'RMX',
            ),
            backgroundColor: Colors.teal,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.picture_as_pdf),
            title: Text(
              'Drag',
            ),
            backgroundColor: Colors.teal,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text(
              'Profile',
            ),
            backgroundColor: Colors.teal,
          )
        ],
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
