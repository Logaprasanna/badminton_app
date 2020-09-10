import 'package:flutter/material.dart';

class Tile extends StatelessWidget {
  final String taskTitle;
  final bool isChecked;
  final Function callBack;

  Tile({this.taskTitle, this.isChecked, this.callBack});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style: TextStyle(),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: callBack,
      ),
    );
  }
}
