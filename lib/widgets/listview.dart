import 'package:flutter/material.dart';
import 'package:todoapp/models/task_data.dart';
import 'package:todoapp/widgets/listtile.dart';
import 'package:provider/provider.dart';

class Taskslist extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<Taskdata>
    (builder: (context, Taskdata taskdata, child) {
      return ListView.builder(
        itemCount: taskdata.tasks.length,
        itemBuilder: (BuildContext context, int index) {
          return ListtileWidget(
            tasktitle: taskdata.tasks[index].name,
            ischecked: taskdata.tasks[index].isDone,
            checboxchange: (newvalue) {
              taskdata.updatetask(taskdata.tasks[index]); 
            },
            listtiledelete: () {
              taskdata.deletetask(taskdata.tasks[index]);
            },
          );
        },
      );
    });
  }
}
