import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:second_practice/provider%20containercontrol.dart';
class Providercontainer extends StatefulWidget {
  const Providercontainer({super.key});

  @override
  State<Providercontainer> createState() => _ProvidercontainerState();
}

class _ProvidercontainerState extends State<Providercontainer> {
  
  @override
  Widget build(BuildContext context) {
    print("rebuild");
    final mycontainer = Provider.of<providercontrols>(context,listen: false);
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Consumer<providercontrols>(builder: (context, value, child)
              {
                return GestureDetector(
                  child: Container(
                  width: 300,
                  height: 400,
                  color: mycontainer.currentColor 
                ),
                onTap: () {
                  mycontainer.changeColor();
                  });
                }, 
              ),
        
              
            ],
          )
        ],
      )
    );
  }
}