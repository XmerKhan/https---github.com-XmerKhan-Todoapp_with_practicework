import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
class Todohome extends StatefulWidget {
  const Todohome({super.key});
  @override
  State<Todohome> createState() => _TodohomeState();
}


class _TodohomeState extends State<Todohome> {
  String name = "Guest";
  int selectedindex = 0;
  final titlecontroller= TextEditingController();
  final descriptionController = TextEditingController();
  final fullname = TextEditingController();
  List <String> titlenote = [];
  List <String> descriptionnote = [];
  List names = ["Setting","Upgrade to Premium", "My Account", "Favourite List","Shortcut"];
  List icons = [Icon(Icons.settings),Icon(Icons.star),Icon(Icons.account_box),Icon(Icons.favorite),Icon(Icons.shortcut)];

 
   File? myImg;

  Future getImageCamera()async{
    ImagePicker imgpicker = ImagePicker();
    var myimg = await imgpicker.pickImage(source: ImageSource.camera);
    if(myimg != null)
    {
      myImg = File(myimg.path);
      setState(() {
        
      });
    }
  }
  Future getImageGallery()async{
    ImagePicker imgpicker = ImagePicker();
    var myimg = await imgpicker.pickImage(source: ImageSource.gallery);
    if(myimg != null)
    {
      myImg = File(myimg.path);
      setState(() {
        
      });
    }
  }
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 223, 220, 221),
        appBar: AppBar(
         backgroundColor:  const Color.fromARGB(255, 223, 220, 221),
         toolbarHeight: 50,
         title: Padding(
           padding: const EdgeInsets.only(left: 60),
           child: Text("TODo App",style: TextStyle(color: const Color.fromARGB(255, 4, 113, 202),fontWeight: FontWeight.bold)),
         )
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              SizedBox(height: 200,
                child: DrawerHeader(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(colors:[const Color.fromARGB(255, 4, 113, 202),const Color.fromARGB(255, 32, 3, 69),const Color.fromARGB(255, 4, 113, 202),])
                  ),
                   child: Column(
                    children: [
                      SizedBox(height: 20),
                     InkWell(onTap: () => getImageCamera(),onDoubleTap: getImageGallery,
                     child: CircleAvatar(backgroundImage: myImg!=null? FileImage(myImg!):null,radius: 40,
                     child: myImg == null ? Icon(Icons.person, size: 60, color: Colors.white) : null, )),
                     SizedBox(height: 10),
                            Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 70),
                      child: TextFormField(
                        controller: fullname,
                        style: TextStyle(color: Colors.white),
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                         hintText: "Enter Full Name:",hintStyle: TextStyle(color: Colors.white),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                            ]),
                ),
              ),    
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:  20),
              child: Container(
                color: const Color.fromARGB(255, 4, 113, 202),
                child: IconButton(onPressed: (){
                  setState(() {
                    name = fullname.text;
                     Navigator.pop(context);
                   });
                }, icon: Icon(Icons.done,color: Colors.white,size: 30,)),
              ),
            ),
            SizedBox(height: 20,),
           SizedBox(height: 340,
             child: ListView.builder(itemCount: 5,
             itemBuilder: (context, index) {
              return Card(
                color: Colors.white,
                child: ListTile(
                 title: Text(names[index]),
                 trailing: icons[index],
                ),
              );
               
             },),
           ),
           Container(
                color: const Color.fromARGB(255, 4, 113, 202),
                child: CupertinoButton(child: Text("Log Out",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),), onPressed: (){
                  
                }),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 25),
                child: Text("@ Powered by Umer Khan",style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
              )
            ],
          )
        ),
        
          
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                children: [
                  Row(
                    children: [
                      Container(
                width: 360,height: 200,color: const Color.fromARGB(255, 4, 113, 202),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                    CircleAvatar(radius: 50,
                   backgroundImage: myImg != null ? FileImage(myImg!) : null,
                 child: myImg == null ? Icon(Icons.person, size: 60, color: Colors.white) : null,
)
                      ]),
                     
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 30),
                            child: Text("Welcome, $name",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                          )
                        ],
                      )
                  ],
                ),
              )
                    ],
                  ),
                  Row(
                    children: [
                      Image.asset("assets/images/frontbanner.png",alignment: Alignment.topLeft),
                    ]
              ),
                      
                ],
              ),
   
               Padding(
                   padding: const EdgeInsets.only(top: 50,left: 15,right: 15),
                   child: TextField(
                    controller: titlecontroller,
                      decoration: InputDecoration(
                        hintText: ("Enter Title: "),
                        labelText: ("Title"),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        )
                      ),
                    ),
                 ),
                 Padding(
                   padding: const EdgeInsets.only(top: 30,left: 15,right: 15,bottom: 30),
                   child: TextField(
                    controller: descriptionController,
                    maxLines: 3,
                    decoration: InputDecoration(
                      hintText: ("Description: "),
                      labelText: ("Description"),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)
                      )
                    ),
                   ),
                 ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(child: Text("Save Data",
                  style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),),
                   onPressed: (){
                    if(titlecontroller.text.isNotEmpty && descriptionController.text.isNotEmpty){
                    setState(() {
                      titlenote.insert(0, titlecontroller.text.trim());
                      descriptionnote.insert(0, descriptionController.text.trim());
                      titlecontroller.clear();
                      descriptionController.clear();
                   },);}
                  }
                   
                            ),
                ),
          
          SizedBox(height: 20,),
          SizedBox( height: 200,
            child: ListView.builder(
              itemCount: titlenote.length & descriptionnote.length, 
              itemBuilder: (context,index){
                return Card.filled(
                child:  ListTile(
                  title: Text(titlenote[index]),
                  subtitle: Text(descriptionnote[index]),
                  trailing: IconButton(icon: Icon(Icons.delete,color: const Color.fromARGB(255, 191, 42, 32),),onPressed: (){
                    setState(() {
                      titlenote.removeAt(index);
                      descriptionnote.removeAt(index);
                    });
                  },),
                ) );
              }),
          )
          ],
              ),
              
            
            
      
    ));
  }
}

