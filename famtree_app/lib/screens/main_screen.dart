import 'package:famtree_app/bottom_navigation_bar/bottom_bar_navigation_pattern_example.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffEBEBEB),
      body: BottomBarNavigationDataProvider(),
    );
  }
}
