import 'package:flutter/material.dart';

class Android extends StatelessWidget{
  const Android ({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text("RouteAppOne",style: TextStyle(color: Colors.white),),
        backgroundColor: Color(0xFF001f84),
      ),
      body: Column(

        children: [
          Container(
              margin: EdgeInsets.all(18),
              child: Image.asset("assets/images/Android.jpeg")),
          Container(

            margin: EdgeInsets.all(10),

            child: Text("""Part 1 (java SE)
          1.introduction to java programming 
          * overview
          * compiler and JVM
          * project Structure
          * Hello World Application
          * Variables and Data types
          * operators
          * conditional Statments (if -Switch)
          * Loops (for-while-Do-while)
          2.Basics
          * nested loops 
          * Strings
          * Arrays
""",style: TextStyle(fontSize: 21,color: Colors.white),),
          )
        ],
      ),
    );
  }
}