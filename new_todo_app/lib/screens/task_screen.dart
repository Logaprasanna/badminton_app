import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:newtodoapp/widgets/task_list.dart';
import 'add_task_screen.dart';
import 'package:provider/provider.dart';
import 'package:newtodoapp/model/main_class.dart';

class TaskScreen extends StatefulWidget {
  @override
  _TaskScreenState createState() => _TaskScreenState();
}

class _TaskScreenState extends State<TaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              isScrollControlled: true,
              context: context,
              builder: (context) => AddTaskScreen());
        },
        backgroundColor: Colors.black,
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      backgroundColor: Colors.black,
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(right: 150.0, top: 40.0, bottom: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                CircleAvatar(
                  radius: 50.0,
                  child: Icon(
                    Icons.memory,
                    color: Color(0xffF4BC32),
                    size: 90.0,
                  ),
                  backgroundColor: Colors.white,
                ),
                SizedBox(
                  height: 15.0,
                ),
                Text(
                  'Taskz',
                  style: TextStyle(color: Colors.white, fontSize: 60.0),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Text(
                  '${Provider.of<Tasks>(context).taskCount} Tasks',
                  style: TextStyle(color: Colors.white, fontSize: 20.0),
                )
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(30.0),
              decoration: BoxDecoration(
                  color: Color(0xffF4BC32),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25.0),
                      topRight: Radius.circular(25.0))),
              child: TaskList(),
            ),
          )
        ],
      ),
    );
  }
}
