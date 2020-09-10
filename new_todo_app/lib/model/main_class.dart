import 'dart:collection';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'task.dart';

class Tasks extends ChangeNotifier {
  List<Task> _tasks = [];

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  int get taskCount {
    return _tasks.length;
  }

  void changeCheckBox(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void changeString(newTask) {
    _tasks.add(Task(name: newTask));
    notifyListeners();
  }

  removeTask(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }
}
