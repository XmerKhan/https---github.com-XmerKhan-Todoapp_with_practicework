import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:second_practice/switchusingprovider.dart';
class Switchpractice extends StatefulWidget {
  const Switchpractice({super.key});

  @override
  State<Switchpractice> createState() => _SwitchpracticeState();
}

class _SwitchpracticeState extends State<Switchpractice> {
  @override
  Widget build(BuildContext context) {
    final switchprovider = Provider.of<Providerswitch>(context,listen: true);
    return Scaffold(
      appBar: AppBar(
        title: Text("Switch Button ON/OFF")
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Consumer<Providerswitch>(
              builder: (context, provider, child) {
                return CupertinoSwitch(
                  value: provider.ison,
                  onChanged: (value) => switchprovider.function(value),
                );
              },
            ),
            SizedBox(height: 10),
            Consumer<Providerswitch>(
              builder: (context, provider, child) {
                return Text(
                  provider.ison ? "On" : "Off",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}