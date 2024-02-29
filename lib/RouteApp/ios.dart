import 'package:flutter/material.dart';

class ios extends StatelessWidget{
  const ios({super.key});
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
  margin: EdgeInsets.all(20),
    child: Image.asset("assets/images/IOS.jpeg")),
          Container(
            margin: EdgeInsets.all(3),
            child: Text("""  Ios Development
          oop refershment
          Introduction
          a.installing os x virtual machine
          b.installing Xcode and the IOS Sdk
          c.aguided tour of x-code 
          d.introduction to x-code playgrounds
          * swift programming language 
          * swift data types ,constants and variables
          * swift operator and expressions 
          * swift flow control 
          * the swift switch statments
          
          """,style: TextStyle(fontSize: 22,color: Colors.white),),
          )
        ],
      ),
    );
  }
}