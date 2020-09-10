import 'package:flutter/material.dart';
import 'constants.dart';

class sCardWidget extends StatelessWidget {
  sCardWidget({this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(title),
      margin: EdgeInsets.all(10.0),
      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 50.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          boxShadow: kShadowBox,
          color: Colors.white),
    );
  }
}
