import 'package:flutter/material.dart';

class task extends StatelessWidget {
  const task({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("الصفحة الرئيسية"),
        centerTitle: true,
        backgroundColor: Colors.purpleAccent,

      ),
      body: Column(
        children: [
          SizedBox(height: 7,),
          Row(
            children: [
              Expanded(child: Container(

                color: Colors.purpleAccent,
                  child:


                  Center(child: Text("hey",style: TextStyle(fontSize: 30,color: Colors.white),))),),
              SizedBox(width: 8,),
              Expanded(child: Container(
                color: Colors.purpleAccent,
                  child: Center(child: Text("المجلات",style: TextStyle(fontSize: 30,color: Colors.white),))))
            ],
          ),
          SizedBox(height: 10,),
          Row(
            children: [
              Expanded(child: Image.asset("assets/images/person.jpg")),
              Expanded(child: Image.asset("assets/images/person.jpg"))

            ],
          )
      ]
      ),
    );
  }

}