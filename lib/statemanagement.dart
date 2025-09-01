import 'package:flutter/material.dart';
class Providertask extends StatefulWidget {
  const Providertask({super.key});

  @override
  State<Providertask> createState() => _ProvidertaskState();
}

class _ProvidertaskState extends State<Providertask> {
  bool choice = false;
  @override
  Widget build(BuildContext context) {
    print("rebuild");
    return Scaffold(
      backgroundColor: Colors.white,
     body: Column(
      children: [
       Center(child: IconButton(icon: Icon(Icons.favorite,
       color: choice ? Colors.red : Colors.black,
       size: 300,),
       onPressed: (){
        setState(() {
          choice = !choice;
        });
       },))
      ],
     ),
    );
  }
}