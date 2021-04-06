import 'package:drag_and_drop_lists/drag_and_drop_item.dart';
import 'package:drag_and_drop_lists/drag_and_drop_lists.dart';
import 'package:flutter_myshop/pages/rmxlite/CalendarApp.dart';
import 'package:flutter_myshop/pages/rmxlite/DynamicSchedulingPlanScreen.dart';
import 'rmx_navigation_drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class rmxMenu extends StatefulWidget {
  rmxMenu({key}) : super(key: key);

  @override
  _rmxMenu createState() => _rmxMenu();
}

class InnerList {
  final String name;
  List<String> children;
  InnerList({this.name, this.children});
}

class _rmxMenu extends State<rmxMenu> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // drawer: rmxNavigationDrawer(),
      body: CalendarApp(),
    );
  }
}
