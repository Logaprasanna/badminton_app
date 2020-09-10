import 'dart:html';
import 'package:flutter/material.dart';
import 'package:psyterapp/constants.dart';



Widget _doodledo(){

final kboxStyle = {
  BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(10.0),
    boxShadow: [
      BoxShadow(
        blurRadius: 20.0,
        offset: Offset(0, 2),
        color: Colors.black)
    ]
  ),
};
  Column(
  mainAxisAlignment: MainAxisAlignment.center,
  children: <Widget>[
    Container(
      child: Text('Sign up',
      style: TextStyle(color: Colors.white,
      fontSize: 40.0,
      fontWeight: FontWeight.bold),),
    ),
    SizedBox(height: 30.0,),
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text('Email',
        style: kLabelStyle,),
        Container(
          alignment: Alignment.topLeft,
          height: 60.0,
          decoration: kBoxDecorationStyle,
          child: TextField(
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(color: Colors.white),
            decoration: InputDecoration(
              prefixIcon: Icon(
                Icons.email,
                color: Colors.white,
              ),
              border: InputBorder.none,
              contentPadding: EdgeInsets.all(10.0),
              hintText: 'Enter your email',
              hintStyle: kHintTextStyle,
            ),
          ),
        ),
      ],
    ),
  ],
);
}
