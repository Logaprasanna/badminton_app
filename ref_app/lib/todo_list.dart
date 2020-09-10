import 'package:flutter/material.dart';
import 'card_widget.dart';
import 'todo.dart';

class TodoList extends StatelessWidget {
  TodoList({@required this.todos});

  final List<Todo> todos;

  Widget _buildItem(BuildContext context, int index) {
    final todo = todos[index];

    return CardWidget(
      title: todo.title,
      size: 30.0,
    );
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemBuilder: _buildItem,
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemCount: todos.length,
    );
  }
}
//return CheckboxListTile(
//value: todo.isDone,
//title: Text(todo.title),
//onChanged: (bool isChecked) {
//onTodoToggle(todo, isChecked);
//},
//);

//return ListTile(
//title: Text(todo.title),
//);
