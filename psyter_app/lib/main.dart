import 'package:flutter/material.dart';
import 'package:psyterapp/login_screen.dart';
import 'package:psyterapp/constants.dart';
import 'package:psyterapp/login_screen2.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Psyter App',
      debugShowCheckedModeBanner: false,
      home: SignUp(),
    );
  }
}
