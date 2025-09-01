import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'dialodbox.dart';
class Dialogs extends StatefulWidget {
  const Dialogs({super.key});

  @override
  State<Dialogs> createState() => _DialogsState();
}

class _DialogsState extends State<Dialogs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CupertinoButton(child: Text("Diaolg Box"), onPressed: (){
            MyDialog.pakistanDialog(context);
          })
        ],
      ),
    );
  }
}