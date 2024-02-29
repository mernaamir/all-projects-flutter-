import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Facebook extends StatelessWidget {
  const Facebook({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SafeArea(
      child: Scaffold(
      drawer: Drawer(),
        appBar: AppBar(
          title: Text("Chats"),
          centerTitle: true,
          actions: [
            Icon(Icons.pending_actions_outlined)
          ],
          bottom: AppBar(
              backgroundColor: Colors.amber
          ),


),
        ),

    );
  }
}
