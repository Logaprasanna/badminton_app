import 'package:flutter/material.dart';

class BWCard extends StatelessWidget {
  double bottomValue, topValue;
  Color color;
  Color textColor;
  String title;
  String image;
  double Ileft;
  double Iheight;
  double Iwidth;
  BWCard(
      {this.bottomValue = 0.0,
      this.title,
      this.topValue = 0.0,
      this.image,
      this.Iheight,
      this.Ileft,
      this.Iwidth,
      this.color,
      this.textColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: topValue, bottom: bottomValue),
      color: Colors.transparent,
      height: 160.0,
      width: 375.0,
      child: Stack(
        children: [
          Positioned(
            top: 30.0,
            child: Container(
              height: 130.0,
              width: 375.0,
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 0),
                        color: Colors.black.withOpacity(0.5),
                        blurRadius: 2.0),
                  ],
                  color: color,
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
            ),
          ),
          Positioned(
            left: Ileft,
            child: Container(
              child: Image.asset(
                image,
                fit: BoxFit.cover,
              ),
              height: Iheight,
              width: Iwidth,
              // decoration: BoxDecoration(
              //     color: Colors.white,
              //     borderRadius: BorderRadius.all(Radius.circular(50.0))),
            ),
          ),
          Positioned(
            top: 60.0,
            left: 40.0,
            child: Container(
              child: Text(
                '$title',
                style: TextStyle(
                    fontSize: 33.0, fontFamily: 'Montserrat', color: textColor),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
