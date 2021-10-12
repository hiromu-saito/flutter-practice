import 'package:flutter/foundation.dart';
import 'package:todoey/models/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [];

  void addTask(String newTaskName) {
    tasks.add(Task(name: newTaskName));
    notifyListeners();
  }

  void toggleDone(int index, bool value) {
    _tasks[index].toggleDone(value);
    notifyListeners();
  }

  void deleteTask(int index) {
    _tasks.removeAt(index);
    notifyListeners();
  }

  int get taskCount {
    return _tasks.length;
  }

  List<Task> get tasks {
    return _tasks;
  }
}
