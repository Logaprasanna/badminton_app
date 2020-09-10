import 'package:flutter/material.dart';

class NameCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Color(0xff797979),
          borderRadius: BorderRadius.all(Radius.circular(10.0))),
      margin: EdgeInsets.only(left: 10.0, top: 40.0),
      height: 100.0,
      width: 375.0,
      child: Stack(
        children: [
          Positioned(
            top: 20.0,
            left: 15.0,
            child: Text(
              'Kandasamy',
              style: TextStyle(
                  fontSize: 24.0,
                  color: Colors.white,
                  fontFamily: 'Montserrat'),
            ),
          ),
          Positioned(
            top: 31.0,
            left: 190.0,
            child: Text(
              '..',
              style: TextStyle(
                  fontSize: 24.0,
                  color: Colors.white,
                  fontFamily: 'Montserrat'),
            ),
          ),
          Positioned(
            top: 50.0,
            left: 15.0,
            child: Text('Aachari',
                style: TextStyle(
                    fontSize: 24.0,
                    color: Colors.white,
                    fontFamily: 'Montserrat')),
          ),
          Positioned(
            top: 20.0,
            left: 230.0,
            child: Text('Kamatchi',
                style: TextStyle(
                    fontSize: 24.0,
                    color: Colors.white,
                    fontFamily: 'Montserrat')),
          ),
          Positioned(
            top: 50.0,
            left: 230.0,
            child: Text('Ammal',
                style: TextStyle(
                    fontSize: 24.0,
                    color: Colors.white,
                    fontFamily: 'Montserrat')),
          ),
        ],
      ),
    );
  }
}
