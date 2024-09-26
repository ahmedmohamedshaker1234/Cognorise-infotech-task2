import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoapp/models/task_data.dart';
import 'package:todoapp/pages/Homepage.dart';

void main() {
  runApp(const toDoapp());
}

class toDoapp extends StatelessWidget {
  const toDoapp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) =>Taskdata() ,
      child:  MaterialApp (
        debugShowCheckedModeBanner: false,
        home: Homepage(),
      ),
    );
  }
}
