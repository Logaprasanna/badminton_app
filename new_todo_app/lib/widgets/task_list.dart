import 'package:flutter/material.dart';
import 'package:newtodoapp/widgets/task_tile.dart';
import 'package:provider/provider.dart';
import 'package:newtodoapp/model/main_class.dart';

class TaskList extends StatefulWidget {
  @override
  _TaskListState createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Tasks>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final task = taskData.tasks[index];
            return TaskTile(
              taskTitle: task.name,
              onChecked: task.isDone,
              callBack: (newValue) {
                taskData.changeCheckBox(task);
              },
              longPress: () {
                taskData.removeTask(task);
              },
            );
          },
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}
