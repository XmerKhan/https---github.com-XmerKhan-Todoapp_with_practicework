import 'package:flutter/material.dart';
class ListViewSeperate extends StatefulWidget {
  const ListViewSeperate({super.key});

  @override
  State<ListViewSeperate> createState() => _ListViewSeperateState();
}

class _ListViewSeperateState extends State<ListViewSeperate> {

List myList = [
"Umer", "Nauman"," Asad","Ali","Faizan"

];
List msgList = [

"Hello","Hey", "Hi","Salam","W.salam"



];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            alignment: Alignment.center,
            width: 300,height: 200,color: Colors.pinkAccent,
            child: ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    title: Text(myList[index]),
                    subtitle: Text(msgList[index]),
                    trailing: IconButton(onPressed: (){}, icon: Icon(Icons.event_repeat)),
                  ),
                );
              },
          ) )
        ],
      ),
    );
  }
}