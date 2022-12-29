import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors, must_be_immutable
class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String textTitle;
  final void Function(bool?)? checkBoxChange;
  final void Function()? longPressCallBack;

  // ignore: use_key_in_widget_constructors, prefer_const_constructors_in_immutables
  TaskTile(
      {required this.isChecked,
      required this.textTitle,
      this.checkBoxChange,
      this.longPressCallBack});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallBack,
      title: Text(
        textTitle,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        value: isChecked,
        onChanged: checkBoxChange,
      ),
    );
  }
}
