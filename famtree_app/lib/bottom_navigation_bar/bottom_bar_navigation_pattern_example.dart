import 'package:famtree_app/screens/tree_view.dart';
import 'package:flutter/material.dart';
import 'animated_bottom_bar.dart';
import 'package:famtree_app/screens/a_view.dart';
import 'package:famtree_app/screens/s_view.dart';

class BottomBarNavigationDataProvider extends StatefulWidget {
  final List<BarItem> barItems = [
    BarItem(
      text: "A-View",
      iconData: Icons.explore,
      color: Colors.indigo,
    ),
    BarItem(
      text: "S-View",
      iconData: Icons.format_list_numbered,
      color: Colors.pinkAccent,
    ),
    BarItem(
      text: "Tree View",
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
  final _children = [AView(), SView(), TreeView()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffEBEBEB),
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
