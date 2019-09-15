import 'package:flutter/material.dart';
import 'package:flutter_to_do_list/widgets/task_tile.dart';
import 'package:flutter_to_do_list/models/task.dart';

class TaskList extends StatefulWidget {
  final List<Task> tasks;
  final Function deleteTaskCallback;

  TaskList(this.tasks, this.deleteTaskCallback);

  @override
  _TaskListState createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.symmetric(
        horizontal: 20,
      ),
      itemBuilder: (context, index) {
        return TaskTile(
          taskTitle: widget.tasks[index].name,
          isChecked: widget.tasks[index].done,
          checkboxCallback: (newValue) {
            setState(() {
              widget.tasks[index].toggleDone();
            });
          },
          longPressCallback: () {
            setState(() {
              widget.deleteTaskCallback(index);
            });
          },
        );
      },
      itemCount: widget.tasks.length,
    );
  }
}
