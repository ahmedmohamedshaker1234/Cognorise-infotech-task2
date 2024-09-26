import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoapp/models/task_data.dart';

class Addtaskscreen extends StatelessWidget {
final Function addtaskcallback;

   Addtaskscreen(this.addtaskcallback);

  @override
  Widget build(BuildContext context) {
    String? newTasktitle;
    return Container(
      padding: EdgeInsets.all(30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text("Add Task",textAlign: TextAlign.center,style: 
          TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.indigo[400]),),
          TextField(
            autofocus: true,
            textAlign: TextAlign.center,
            onChanged: (newText) {
              newTasktitle=newText;
            },
          ),
          SizedBox(height: 30,),
          TextButton(onPressed: (){
            Provider.of<Taskdata>(context,listen: false).addtask(newTasktitle!);
            Navigator.pop(context);
          },
           child: Text("Add",),
          style:
          TextButton.styleFrom(foregroundColor: Colors.white, backgroundColor: Colors.teal[400]),)
        ],
      ),
    );
  }
}