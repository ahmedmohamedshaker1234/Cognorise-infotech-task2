import 'package:flutter/material.dart';
import 'package:todoapp/models/task.dart';

class Taskdata extends ChangeNotifier{
 
   List<Task> tasks = [
    Task(name: "go to work"),
    Task(name: "go shopping"),
    Task(name: "buy a gift"),
  ];
  void addtask(String newTasktitle){
    tasks.add(Task(name: newTasktitle));
    notifyListeners();
  }
  void updatetask(Task task){
    task.donechange();
    notifyListeners();
  }
  void deletetask(Task task){
    tasks.remove(task);
    notifyListeners();
  }
}