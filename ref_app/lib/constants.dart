import 'package:flutter/material.dart';

const kShadowBox = [
  BoxShadow(
    color: Colors.black54,
    blurRadius: 20.0, // soften the shadow
    spreadRadius: 0, //extend the shadow
    offset: Offset(
      1.0, // Move to right 10  horizontally
      1.0, // Move to bottom 10 Vertically
    ),
  )
];
