import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:second_practice/todoapp.dart';
class Loginpage extends StatefulWidget {
  const Loginpage({super.key});
  @override
  State<Loginpage> createState() => _LoginpageState();
}
class _LoginpageState extends State<Loginpage> {
  final namecontroller = TextEditingController();
  final emailcontroller = TextEditingController();
  final passcontroller = TextEditingController();
  final confirmpasscontroller = TextEditingController();
  final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 223, 220, 221),
      appBar: AppBar(
        toolbarHeight: 5,
      ),
      body: Form(
        key: _formkey,
        child: SingleChildScrollView(
          child: Column(
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
                  Text("Welcome Onboard!",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold))
                ],
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Let's help you meet up your task",style: TextStyle(fontSize: 15,color: const Color.fromARGB(255, 46, 45, 45)))
                ],
              ),
              SizedBox(height: 50,),
              
              Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 238, 235, 236),
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: TextFormField(
                    controller: namecontroller,
                  decoration: InputDecoration(
                    hintText: "  Enter your Name",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide.none,
                    )
                  ),
                ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 238, 235, 236),
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: TextFormField(
                    controller: emailcontroller,
                  decoration: InputDecoration(
                    hintText: "  Enter your Email",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide.none
                    )
                  ),
                ),
                ) ),
                Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 238, 235, 236),
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: TextFormField(
                    controller: passcontroller,
                  decoration: InputDecoration(
                    hintText: "  Enter password",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide.none
                    )
                  ),
                ),
                ) ),
                Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 238, 235, 236),
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: TextFormField(
                    controller: confirmpasscontroller,
                  decoration: InputDecoration(
                    hintText: "  Confirm Password",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide.none
                    )
                  ),
                ),
                ) ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    height: 50,width: 300,color: Colors.transparent,
                    child: CupertinoButton(color: const Color.fromARGB(255, 4, 113, 202),borderRadius: BorderRadius.zero,child: Text("Register",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                     onPressed: (){

                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Todoapp()));
                    
                      setState(() {
                      namecontroller.clear();
                      emailcontroller.clear();
                      passcontroller.clear();
                      confirmpasscontroller.clear();
                    }); }
                    
                      
                      ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                  Text( "Already have an Account?  ",style: TextStyle(fontSize: 15)),
                  InkWell(
                    child: Text("Sign in",style: TextStyle(color: Colors.purple,fontWeight: FontWeight.bold,fontSize: 16),),onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Todoapp()));},
                            )
                    
                    ],
                  ),
                )
            ],
          ),
        ),
      ),
    );
  }
}