// ignore_for_file: camel_case_types

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'dialodbox.dart';
class practicedilog extends StatefulWidget {
  const practicedilog({super.key});

  @override
  State<practicedilog> createState() => _practicedilogState();
}

class _practicedilogState extends State<practicedilog> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CupertinoButton(child: Text("Dialogs"), onPressed: (){
            MyDialog.pakistanDialog(context);
          })

        ],
      ),
    );
  }
}