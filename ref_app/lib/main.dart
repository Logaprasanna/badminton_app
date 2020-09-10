import 'package:flutter/material.dart';
import 'package:refapp/sample.dart';
import 'todo_list_screen.dart';
import 'todo.dart';
import 'todo_list.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Color(0XFF289600),
      ),
      home: TodoListScreen(),
    );
  }
}
