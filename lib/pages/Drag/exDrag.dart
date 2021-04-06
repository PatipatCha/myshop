import 'ex/horizontal_example.dart';
import 'package:flutter/material.dart';


class exDrag extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Drag and Drop Lists',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => HorizontalExample(),

      },
    );
  }
}