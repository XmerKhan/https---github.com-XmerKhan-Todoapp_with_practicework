import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:second_practice/loginpage.dart';
class Firstpage extends StatefulWidget {
  const Firstpage({super.key});

  @override
  State<Firstpage> createState() => _FirstpageState();
}

class _FirstpageState extends State<Firstpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 223, 220, 221),
      appBar: AppBar(
        toolbarHeight: 5,
      ),
      body: Column(
        children: [
          Row(
            children: [
                Image.asset('assets/images/frontbanner.png')
            ],
          ),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/middleimage.png',height: 200,)
          ],),
          SizedBox(height: 50,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Get things done with TODo",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold))
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  alignment: Alignment.center,
                         width: 340,color: Colors.transparent,
                child: Text("A TODo app is a digital application designed to help individuals manage tasks and improve productivity.\n" 
                "It acts as a virtual assistant, allowing users to create, organize, prioritize, and track their tasks,\n"
                 "replacing traditional pen-and-paper lists. ",textAlign: TextAlign.center,), ),
              )
            ],
          ),
          SizedBox(height: 30,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 300,height: 50,color: Colors.transparent,
                child: CupertinoButton(color: const Color.fromARGB(255, 4, 113, 202),borderRadius: BorderRadius.zero,child: Text("Get Started",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),), 
                onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Loginpage()));}))
            ],
          )
        ],
      ),
        
    );
  }
}