import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final IconData icon;
  MyButton({this.icon, this.onpress});

  final Function onpress;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onpress,
      shape: CircleBorder(),
      constraints: BoxConstraints.tightFor(
        width: 69.0,
        height: 69.0,
      ),
      fillColor: Color(0xFFE0E0E0),
    );
  }
}
