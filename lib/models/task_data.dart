import 'package:flutter/material.dart';
import 'package:todoey_app/models/task.dart';
import 'dart:collection';

class TaskData extends ChangeNotifier {
  final List<Task> _tasks = [
    Task(name: 'Buy Drinks'),
    Task(name: 'Cook Rice and Beans'),
    Task(name: 'Exercise'),
    Task(name: 'Gym'),
  ];

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  int get taskCount {
    return _tasks.length;
  }

  void addTaskData(String newTextTitle) {
    _tasks.add(Task(name: newTextTitle));
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toggleCheckBox();
    notifyListeners();
  }

  void removeTask(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }
}
