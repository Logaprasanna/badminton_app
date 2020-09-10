import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final IconData icon;
  MyButton({this.icon, this.onpress});

  final Function onpress;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(
        Icons.add,
        color: Color(0XFF454F63),
        size: 45.0,
      ),
      onPressed: onpress,
      shape: CircleBorder(),
      constraints: BoxConstraints.tightFor(
        width: 46.0,
        height: 43.0,
      ),
      fillColor: Colors.white,
    );
  }
}
