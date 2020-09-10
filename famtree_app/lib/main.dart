import 'package:flutter/material.dart';
import 'screens/intro_screen.dart';
import 'package:provider/provider.dart';
import 'data_provider/data.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => DataProvider(),
      child: MaterialApp(
        home: IntroScreen(),
      ),
    );
  }
}
