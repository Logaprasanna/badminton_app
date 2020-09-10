import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final String taskTitle;
  final bool onChecked;
  final Function callBack;
  final GestureLongPressCallback longPress;

  TaskTile(
      {this.taskTitle, this.onChecked = false, this.callBack, this.longPress});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPress,
      title: Text(
        '$taskTitle',
        style: TextStyle(
            color: Colors.white,
            decoration: onChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
          activeColor: Colors.black, value: onChecked, onChanged: callBack),
    );
  }
}
