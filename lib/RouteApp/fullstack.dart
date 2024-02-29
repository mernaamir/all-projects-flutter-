import 'package:flutter/material.dart';

class fullstack extends StatelessWidget{
  const fullstack({super.key});

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
            margin: EdgeInsets.all(13),
              child: Image.asset("assets/images/fullStack.jpeg")),
          Container(

            child: Text("""* HTML
* HTML 5
* CSS
* CSS3 
* BootStrap 4
* JavaScript 
* Regular Expressions
* ECMA Script 5
* JQuery 
* Angular 7
* Fabric.js
* AJAX
* JSON
* Hosting and Domains
* Freelancing tips and tracks
          """,
              style: TextStyle(fontSize: 23,color: Colors.white),
            ),
          )
        ],
      )
    );
  }
}