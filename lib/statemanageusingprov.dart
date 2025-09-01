import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:second_practice/providercontrol.dart';
class HeartTask extends StatefulWidget {
  const HeartTask({super.key});

  @override
  State<HeartTask> createState() => _HeartTaskState();
}
class _HeartTaskState extends State<HeartTask> {
  @override
  Widget build(BuildContext context) {
    print("rebuild");
    final mytask = Provider.of<Heartusingprovider>(context, listen: false);
    return  Scaffold(
      body:  Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Consumer<Heartusingprovider>(builder: (context, value, child)
            {
          return  IconButton(icon: Icon(Icons.favorite,
        color: mytask.choice ? Colors.amber : Colors.green,
       size: 300),
       onPressed: (){ mytask.choices();
       } );
            }),
      ] ),
      ]
    ),
      
    );
  }
}