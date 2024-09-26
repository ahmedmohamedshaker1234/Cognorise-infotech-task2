import 'package:flutter/material.dart';
class ListtileWidget extends StatelessWidget {
  
   final  bool ischecked ;
   final String tasktitle;
   final void Function(bool?) checboxchange;
      final void Function() listtiledelete;


   ListtileWidget({required this.ischecked, required this.tasktitle,required this.checboxchange, required this.listtiledelete});
   @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(tasktitle,style: TextStyle(decoration: ischecked?TextDecoration.lineThrough:TextDecoration.none),),
      trailing: Checkbox(
      value: ischecked,
      onChanged: checboxchange,
    ),
    onLongPress:listtiledelete ,
    );
  }
}
  

