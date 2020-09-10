import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final IconData icon;
  final Function onPress;

  MyButton({@required this.icon, @required this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: Icon(icon),
        decoration: BoxDecoration(color: Colors.grey, shape: BoxShape.circle),
        constraints: BoxConstraints.tightFor(
          width: 56.0,
          height: 56.0,
        ),
      ),
    );
  }
}
