import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyCupertinoSwitch extends StatefulWidget {
  @override
  _MyCupertinoSwitchState createState() => _MyCupertinoSwitchState();
}

class _MyCupertinoSwitchState extends State<MyCupertinoSwitch> {
  bool isOn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Cupertino Switch Example')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CupertinoSwitch(
              value: isOn,
              onChanged: (bool value) {
                setState(() {
                  isOn = value;
                });
              },
            ),
            SizedBox(height:10),
            Text(
              isOn ? 'ON' : 'OFF',
              style: TextStyle(fontSize: 24),
            ),
          ],
        ),
      ),
    );
  }
}