import 'package:flutter/material.dart';
import 'add_button.dart';
import 'constants.dart';

class CardWidget extends StatelessWidget {
  final String title;
  double size;
  final Function onPress;
  CardWidget({this.title, this.onPress, this.size});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: Center(
          child: Text(
            title,
            style: TextStyle(
                fontFamily: 'Montserrat', fontSize: size, color: Colors.black),
          ),
        ),
        padding: EdgeInsets.fromLTRB(20.0, 30.0, 20.0, 30.0),
        margin: EdgeInsets.symmetric(vertical: 40.0, horizontal: 20.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: Color(0XFFF0EFEF),
          boxShadow: kShadowBox,
        ),
      ),
    );
  }
}
