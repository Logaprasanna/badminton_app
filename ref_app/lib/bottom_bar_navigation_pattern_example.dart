import 'package:flutter/material.dart';
import 'package:refapp/fixtures.dart';
import 'animated_bottom_bar.dart';
import 'standings.dart';
import 'dash.dart';
import 'settings.dart';

class BottomBarNavigationPatternExample extends StatefulWidget {
  final List<BarItem> barItems = [
    BarItem(
      text: "Standings",
      iconData: Icons.assessment,
      color: Colors.indigo,
    ),
    BarItem(
      text: "Fixtures",
      iconData: Icons.description,
      color: Colors.pinkAccent,
    ),
    BarItem(
      text: "Dash",
      iconData: Icons.album,
      color: Colors.teal,
    ),
    BarItem(text: "Settings", iconData: Icons.settings, color: Colors.black54)
  ];

  @override
  _BottomBarNavigationPatternExampleState createState() =>
      _BottomBarNavigationPatternExampleState();
}

class _BottomBarNavigationPatternExampleState
    extends State<BottomBarNavigationPatternExample> {
  int selectedBarIndex = 0;
  final _children = [Standings(), Fixtures(), Dash(), Settings()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFEFEFEF),
      body: _children[selectedBarIndex],
      bottomNavigationBar: AnimatedBottomBar(
          barItems: widget.barItems,
          animationDuration: const Duration(milliseconds: 150),
          barStyle: BarStyle(fontSize: 20.0, iconSize: 30.0),
          onBarTap: (index) {
            setState(() {
              selectedBarIndex = index;
            });
          }),
    );
  }
}

//color: widget.barItems[selectedBarIndex].color,
