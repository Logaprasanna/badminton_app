import 'package:famtree_app/family_pages/kd_screen.dart';
import 'package:flutter/material.dart';

class SlidableCard extends StatelessWidget {
  String text1;
  String text2;
  Function onPress;
  String image;

  SlidableCard({this.text1, this.text2, this.onPress, this.image});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Stack(
        children: [
          Container(
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
          ),
          Container(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Image.asset(
                image,
                fit: BoxFit.cover,
              ),
            ),
            height: 245.0,
            width: 240.0,
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.25),
                offset: Offset(0, 0),
                blurRadius: 20.0,
              )
            ], borderRadius: BorderRadius.all(Radius.circular(20.0))),
          ),
          Positioned(
            top: 260.0,
            left: 10.0,
            child: Text(
              '$text1',
              style: TextStyle(fontSize: 20.0, fontFamily: 'Montserrat'),
            ),
          ),
          Positioned(
            top: 285.0,
            left: 10.0,
            child: Text(
              '$text2',
              style: TextStyle(fontSize: 20.0, fontFamily: 'Montserrat'),
            ),
          ),
          Positioned(
            top: 310.0,
            left: 110.0,
            child: Text(
              'Family',
              style: TextStyle(fontSize: 20.0, fontFamily: 'Montserrat'),
            ),
          ),
        ],
      ),
    );
  }
}
