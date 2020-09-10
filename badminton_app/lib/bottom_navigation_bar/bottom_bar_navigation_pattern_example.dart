import 'package:flutter/material.dart';
import 'animated_bottom_bar.dart';
import 'package:badminton_app/main_screen/fixtures_screen.dart';
import 'package:badminton_app/main_screen/standings.dart';
import 'package:badminton_app/main_screen/dash.dart';

class BottomBarNavigationDataProvider extends StatefulWidget {
  final List<BarItem> barItems = [
    BarItem(
      text: "Fixtures",
      iconData: Icons.explore,
      color: Colors.indigo,
    ),
    BarItem(
      text: "Standings",
      iconData: Icons.format_list_numbered,
      color: Colors.pinkAccent,
    ),
    BarItem(
      text: "Dash",
      iconData: Icons.album,
      color: Colors.teal,
    ),
  ];

  @override
  _BottomBarNavigationDataProviderState createState() =>
      _BottomBarNavigationDataProviderState();
}

class _BottomBarNavigationDataProviderState
    extends State<BottomBarNavigationDataProvider> {
  int selectedBarIndex = 0;
  final _children = [
    FixturesScreen(),
    Standings(),
    Dash(),
  ];

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
