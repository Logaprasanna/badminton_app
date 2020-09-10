import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {
  final String text;
  final Function onPress;

  BottomButton({@required this.text, @required this.onPress});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GestureDetector(
        onTap: onPress,
        child: Center(
          child: Text(
            text,
            style: TextStyle(color: Colors.white, fontSize: 20.0),
          ),
        ),
      ),
      width: double.infinity,
      height: 70.0,
      color: Colors.pink,
    );
  }
}
