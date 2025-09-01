import 'package:flutter/material.dart';

class MyDialog{
static pakistanDialog(BuildContext context){
return showDialog(
  context: context,
   builder: (BuildContext context){

return AlertDialog(
    content: Text("My Alert Box"),
    title: Text("are you sure"),
    actions: [
      TextButton(onPressed: (){}, child: Text("Cancel")),
      TextButton(onPressed: (){}, child: Text("Ok"))
    ],

);

   });
}
}