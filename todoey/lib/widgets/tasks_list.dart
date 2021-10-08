import 'package:flutter/material.dart';

class TaskList extends StatelessWidget {
  const TaskList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 3,
      itemBuilder: (BuildContext context, int index) {
        const list = ['task1', 'task2', 'task3'];
        print('index$index');
        return ListTile(
          title: Text(list[index]),
          trailing: Checkbox(
            onChanged: (value) {},
            value: false,
          ),
        );
      },
    );
  }
}
