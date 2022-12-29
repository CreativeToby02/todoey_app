import 'package:flutter/material.dart';
import 'package:todoey_app/models/task_data.dart';
import 'tasktile.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable, use_key_in_widget_constructors
class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(builder: (context, taskData, child) {
      return ListView.builder(
        itemBuilder: (context, index) {
          final task = taskData.tasks[index];
          return TaskTile(
            textTitle: task.name,
            isChecked: task.isDone,
            checkBoxChange: (newValue) {
              taskData.updateTask(task);
            },
            longPressCallBack: () {
              taskData.removeTask(task);
            },
          );
        },
        itemCount: taskData.taskCount,
      );
    });
  }
}
