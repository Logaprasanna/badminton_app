import 'package:flutter/material.dart';

import 'todo.dart';
import 'players.dart';

class NewTodoDialog extends StatelessWidget {
  final controller = new TextEditingController();
  var players = [];
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Player Name'),
      content: TextField(
        controller: controller,
        autofocus: true,
      ),
      actions: <Widget>[
        FlatButton(
          child: Text('Cancel'),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        FlatButton(
          child: Text('Add'),
          onPressed: () {
            final todo = new Todo(title: controller.value.text);
            controller.clear();
            Navigator.of(context).pop(todo);
          },
        ),
      ],
    );
  }
}
