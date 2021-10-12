import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/task_data.dart';

class TaskTile extends StatelessWidget {
  TaskTile(
      {required this.isChecked,
      required this.taskTitle,
      required this.toggleCheckBoxState,
      required this.taskIndex});

  final bool isChecked;
  final String taskTitle;
  final void Function(bool?) toggleCheckBoxState;
  final int taskIndex;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: toggleCheckBoxState,
      ),
      onLongPress: () => showDialog(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          title: const Text(
            'delete?',
            textAlign: TextAlign.center,
          ),
          actions: [
            Consumer<TaskData>(builder: (context, taskData, child) {
              return TextButton(
                onPressed: () {
                  taskData.deleteTask(taskIndex);
                  Navigator.pop(context);
                },
                child: const Text(
                  'OK',
                  style: TextStyle(
                    color: Colors.red,
                  ),
                ),
              );
            })
          ],
        ),
      ),
    );
  }
}
