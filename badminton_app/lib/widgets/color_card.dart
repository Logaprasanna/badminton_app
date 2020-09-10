import 'dart:math';

import 'package:badminton_app/model/players_data.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:badminton_app/model/players.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class ColorCard extends StatelessWidget {
  final String name;
  ColorCard({this.name});

  List colors = [
    Colors.blue,
    Colors.red,
    Colors.yellow,
    Colors.cyanAccent,
    Colors.greenAccent,
    Colors.purpleAccent,
    Colors.lightGreen,
    Colors.pink
  ];

  Random random = Random();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20.0),
      child: Stack(
        children: [
          Positioned(
            child: Container(
              height: 80.0,
              width: 20.0,
              decoration: BoxDecoration(
                  color: colors[random.nextInt(colors.length)],
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(7.0),
                      bottomLeft: Radius.circular(7.0))),
            ),
          ),
          Positioned(
            left: 80.0,
            top: 22.0,
            child: Text(
              '$name',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                  color: Colors.white,
                  fontFamily: 'Montserrat'),
            ),
          ),
        ],
      ),
      height: 70.0,
      width: 500.0,
      decoration: BoxDecoration(
          color: Color(0xff585179),
          borderRadius: BorderRadius.all(Radius.circular(10.0))),
    );
  }
}
