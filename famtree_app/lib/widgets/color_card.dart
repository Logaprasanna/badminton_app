import 'package:flutter/material.dart';

class ColorCard extends StatelessWidget {
  String hName;
  String wName;
  Color color;
  Function onPress;
  double fontSize;
  double leftGap;
  String image;

  ColorCard(
      {this.hName,
      this.wName,
      this.color,
      this.image,
      this.onPress,
      this.fontSize = 33.0,
      this.leftGap = 155.0});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.all(Radius.circular(40.0))),
      height: 200.0,
      width: 375.0,
      child: GestureDetector(
        onTap: onPress,
        child: Stack(
          children: [
            Positioned(
              top: 30.0,
              child: Container(
                height: 155.0,
                width: 375.0,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.5),
                        offset: Offset(0, 0),
                        blurRadius: 2.0,
                      )
                    ],
                    color: color,
                    borderRadius: BorderRadius.all(Radius.circular(20.0))),
              ),
            ),
            Positioned(
              top: 40.0,
              left: leftGap,
              child: Container(
                height: 155.0,
                width: 200.0,
                child: Text(
                  '$wName',
                  style: TextStyle(
                      fontSize: fontSize,
                      color: Colors.white,
                      fontFamily: 'Montserrat'),
                ),
              ),
            ),
            Positioned(
              top: 80.0,
              left: 160.0,
              child: Container(
                height: 155.0,
                width: 375.0,
                child: Text(
                  'm. $hName',
                  style: TextStyle(
                      fontSize: 14.0,
                      color: Colors.white,
                      fontFamily: 'Montserrat'),
                ),
              ),
            ),
            //image box
            Positioned(
              left: 25.0,
              bottom: 40.0,
              child: Container(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Image.asset(
                    image,
                    fit: BoxFit.cover,
                  ),
                ),
                height: 150.0,
                width: 115.0,
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 0),
                      blurRadius: 2.0,
                      color: Colors.black.withOpacity(0.5))
                ], borderRadius: BorderRadius.all(Radius.circular(10.0))),
              ),
            ),
            Positioned(
              left: 270.0,
              top: 150.0,
              child: Container(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20.0),
                  child: Image.asset(
                    'images/ashwin.png',
                  ),
                ),
                height: 45.0,
                width: 45.0,
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(0, 0),
                          blurRadius: 2.0,
                          color: Colors.black.withOpacity(0.5))
                    ],
                    borderRadius: BorderRadius.all(Radius.circular(90.0))),
              ),
            ),
            Positioned(
              left: 240.0,
              top: 150.0,
              child: Container(
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(30.0),
                    child: Image.asset('images/anu.png')),
                height: 45.0,
                width: 45.0,
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(0, 0),
                          blurRadius: 2.0,
                          color: Colors.black.withOpacity(0.5))
                    ],
                    borderRadius: BorderRadius.all(Radius.circular(90.0))),
              ),
            ),
            Positioned(
              left: 335.0,
              top: 100.0,
              child: Container(
                child: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                ),
              ),
            ),
            Positioned(
              left: 327.0,
              top: 100.0,
              child: Container(
                child: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
