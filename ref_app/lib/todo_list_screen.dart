import 'package:flutter/material.dart';
import 'package:refapp/select_mode.dart';
import 'todo.dart';
import 'todo_list.dart';
import 'new_todo_dialog.dart';
import 'constants.dart';
import 'schedule_page.dart';
import 'players.dart';

class TodoListScreen extends StatefulWidget {
  @override
  _TodoListScreenState createState() => _TodoListScreenState();
}

class _TodoListScreenState extends State<TodoListScreen> {
  List<Todo> todos = [];
  List<String> teams = [];
  List<String> tempTeams = [];

//  _toggleTodo(Todo todo, bool isChecked) {
//    setState(() {
//      todo.isDone = isChecked;
//    });
//  }

  _addTodo() async {
    final todo = await showDialog<Todo>(
      context: context,
      builder: (BuildContext context) {
        return NewTodoDialog();
      },
    );

    if (todo != null) {
      setState(() {
        todos.add(todo);
        teams.add(todo.title);
        tempTeams.add(todo.title);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          TodoList(
            todos: todos,
//        onTodoToggle: _toggleTodo,
          ),
          Container(
            margin: EdgeInsets.fromLTRB(165.0, 605.0, 20.0, 10.0),
            child: RaisedButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
                side: BorderSide.none,
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return SelectMode(
                    data1: teams,
                    data2: tempTeams,
                  );
                }));
              },
              padding: EdgeInsets.all(20.0),
              child: Text(
                'Next',
                style: TextStyle(color: Colors.white, fontSize: 20.0),
              ),
              color: Color(0XFF10FF63),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(
            Icons.add,
            color: Colors.white,
          ),
          backgroundColor: Colors.black,
          onPressed: _addTodo),
    );
  }
}
