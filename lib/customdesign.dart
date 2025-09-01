import 'package:flutter/material.dart';
class CustomContainer extends StatelessWidget {
  final String text;
  final BorderRadius borderradius;
   CustomContainer({super.key, required this.text, required this.borderradius});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,height: 200,
      decoration: BoxDecoration(
        borderRadius: borderradius,
        gradient: LinearGradient(colors: [Colors.black, Colors.red,Colors.black])
      ),
      child:  Column(
        children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
       Text(text,style: TextStyle(color: Colors.white,fontSize: 20, fontWeight: FontWeight.bold),textAlign: TextAlign.center,), 
        ],
        ),
        SizedBox(height: 20,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/middleimage.png',width: 120)
          ],
        )
        ],
      )
      );
      
  }
}