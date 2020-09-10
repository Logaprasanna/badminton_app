import 'package:flutter/material.dart';

class FixturesCard extends StatelessWidget {
  final String player1;
  final String player2;

  FixturesCard({this.player1, this.player2});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20.0),
      height: 100.0,
      width: 380.0,
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.25),
              offset: Offset(0, 0),
              blurRadius: 20.0,
            )
          ],
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(10.0))),
      child: Stack(
        children: [
          Positioned(
            top: 37.0,
            left: 30.0,
            child: Text(
              '$player1',
              style: TextStyle(fontSize: 20.0, fontFamily: 'Montserrat'),
            ),
          ),
          Positioned(
            top: 42.0,
            left: 190.0,
            child: Text(
              'VS',
              style: TextStyle(fontFamily: 'Montserrat'),
            ),
          ),
          Positioned(
            top: 37.0,
            left: 250.0,
            child: Text(
              '$player2',
              style: TextStyle(fontSize: 20.0, fontFamily: 'Montserrat'),
            ),
          )
        ],
      ),
    );
  }
}
