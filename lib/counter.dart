import 'package:flutter/material.dart';

class counter extends StatefulWidget {
  const counter({super.key});


  @override
  State<StatefulWidget> createState() {
return  _CounterScreenState();
  }
}

class _CounterScreenState extends State<counter>{
int index=1;
@override
  Widget build(BuildContext context) {
    // TODO: implement build
 return Scaffold(
    floatingActionButton: FloatingActionButton(
      onPressed: () {
        index++;
        print(index);
        setState(() {

        });
      },
      child: Icon(Icons.add),
    ),
    appBar: AppBar(
      title: Text("counter"),
      backgroundColor: Colors.purple,
    ),
    body: Center(
        child: Text(
          "$index",
          style: TextStyle(
              color: Colors.blue, fontSize: 33, fontWeight: FontWeight.bold),
        )),
  );
  }
}

