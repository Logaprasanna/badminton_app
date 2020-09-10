import 'package:flutter/material.dart';
import 'constants.dart';

class NextButton extends StatelessWidget {
  const NextButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        'Next',
        style: TextStyle(fontSize: 20.0),
      ),
      padding: EdgeInsets.fromLTRB(80.0, 20.0, 80.0, 20.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        color: Color(0xFF10FF63),
        boxShadow: kShadowBox,
      ),
      margin: EdgeInsets.fromLTRB(100.0, 400.0, 100.0, 40.0),
    );
  }
}
