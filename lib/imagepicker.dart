import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
class Imagescreen extends StatefulWidget {
  const Imagescreen({super.key});

  @override
  State<Imagescreen> createState() => _ImagescreenState();
}

class _ImagescreenState extends State<Imagescreen> {

static File? myImage;

Future getImageGallery()async{

ImagePicker imagePicker = ImagePicker();
 var myimage = await  imagePicker.pickImage(source: ImageSource.gallery);

 if(myimage!= null){
 myImage = File(myimage.path);
 setState(() {
   
 });

 }


}
Future getImageCamera()async{
  ImagePicker imagePickers = ImagePicker();
  var myimage = await imagePickers.pickImage(source: ImageSource.camera);
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(child: CupertinoButton(color: Colors.blue,child: Text("On Galley"), onPressed: (){
                getImageGallery();
              }))
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(child: CupertinoButton(color: Colors.red,child: Text("On Camera"), onPressed: (){
                getImageCamera();
              }))
            ],
          ),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(onTap: () {
                getImageGallery();
              },
                child: CircleAvatar(radius: 100,
                child: Icon(Icons.add_a_photo),
                backgroundImage: myImage != null ? FileImage(myImage!): null,
                
                ),
              )
            ],
          )
        ],
        
      ),
    );
  }
}