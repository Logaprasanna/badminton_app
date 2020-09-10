import 'package:flutter/material.dart';

class WhiteCard extends StatelessWidget {
  String fName;
  String wName;
  double dotGap;
  double wNameGap;
  double fontSize;

  WhiteCard(
      {this.fName,
      this.wName,
      this.dotGap = 220.0,
      this.wNameGap = 260.0,
      this.fontSize = 24.0});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                offset: Offset(0, 0),
                blurRadius: 20.0,
                color: Colors.black.withOpacity(0.25))
          ],
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(10.0))),
      margin: EdgeInsets.only(
        left: 5.0,
      ),
      height: 100.0,
      width: 375.0,
      child: Stack(
        children: [
          Positioned(
            top: 35.0,
            left: 15.0,
            child: Text(
              '$fName',
              style: TextStyle(
                  fontSize: fontSize,
                  color: Colors.black,
                  fontFamily: 'Montserrat'),
            ),
          ),
          Positioned(
            top: 31.0,
            left: dotGap,
            child: Text(
              '..',
              style: TextStyle(
                  fontSize: 24.0,
                  color: Colors.black,
                  fontFamily: 'Montserrat'),
            ),
          ),
          Positioned(
            top: 35.0,
            left: wNameGap,
            child: Text('$wName',
                style: TextStyle(
                    fontSize: fontSize,
                    color: Colors.black,
                    fontFamily: 'Montserrat')),
          ),
        ],
      ),
    );
  }
}
