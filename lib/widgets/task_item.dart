import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TaskItem extends StatelessWidget {
  bool isChecked = false;
  String taskTitle;
  Function checkBoxCallback;
  Function longPressCallback;


  TaskItem({this.isChecked, this.taskTitle, this.checkBoxCallback, this.longPressCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallback,
      title: Text(taskTitle, style: TextStyle(decoration: isChecked ? TextDecoration.lineThrough : null),),
      trailing: Checkbox(activeColor: Colors.lightBlueAccent, value: isChecked, onChanged: checkBoxCallback),
    );
  }
}

//TaskCheckBox(checkboxState: isChecked, toggleCheckBoxState: checkBoxCallback)