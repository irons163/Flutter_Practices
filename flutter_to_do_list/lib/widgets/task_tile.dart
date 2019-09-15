import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final taskTitle;
  final bool isChecked;
  final checkboxCallback;
  final longPressCallback;

  TaskTile(
      {this.taskTitle,
      this.isChecked,
      this.checkboxCallback,
      this.longPressCallback});

//  void checkboxCallback(newValue) {
//    setState(() {
//      isChecked = newValue;
//    });
//  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: TaskCheckbox(
        isChecked,
        checkboxCallback,
      ),
      onLongPress: longPressCallback,
    );
  }
}

class TaskCheckbox extends StatelessWidget {
  final bool isChecked;
  final Function toggleCheckboxCallback;
  TaskCheckbox(this.isChecked, this.toggleCheckboxCallback);

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: isChecked,
      onChanged: this.toggleCheckboxCallback,
    );
  }
}
