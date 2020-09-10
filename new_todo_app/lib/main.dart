import 'package:flutter/material.dart';
import 'package:newtodoapp/model/main_class.dart';
import 'package:provider/provider.dart';
import 'screens/task_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Tasks(),
      child: MaterialApp(
        home: TaskScreen(),
      ),
    );
  }
}
