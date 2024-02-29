import 'dart:ui';

import 'package:flutter/material.dart';

class WhatsApp extends StatelessWidget {
  const WhatsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          shadowColor: Colors.green,
          // elevation: 7.0,
          title: Text(
            "WhatsApp",
            style: TextStyle(fontSize: 30, color: Colors.green),
          ),
          titleSpacing: 5,
          actions: [
            Icon(
              Icons.camera_alt_rounded,
              size: 27,
            ),
            SizedBox(width: 26),
            Icon(
              Icons.search,
              size: 27,
            ),
            SizedBox(width: 16),
            Icon(
              Icons.more_vert,
              size: 27,
            ),
            SizedBox(width: 10),
            //   ],bottom: AppBar(
            //   backgroundColor: Colors.green,
            //
            //   leading: Text("Chats",style: TextStyle(color: Colors.white,height: 2.5,fontSize: 23),),
            //   title: Text("status",style: TextStyle(color: Colors.white,height: 2.5)),
            //   centerTitle: true,
            //   actions: [
            //     Text("Calls",style: TextStyle(color: Colors.white,fontSize: 23,height: 3,))
            //   ],
            // ),
            //   shape: OutlineInputBorder(
            //     borderSide: BorderSide(
            //       color: Colors.red,
            //       width: 5,
            //       style: BorderStyle.none,
            //     ),
            //     borderRadius: BorderRadius.only(),
            //   ),
          ]),
          // floatingActionButton: FloatingActionButton(onPressed: (){},
          //   child: Icon(Icons.add),),

          // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      body:

      Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Container(
          //     color: Colors.green,
          //     child: Row(
          //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //       children: [Text("chats"), Text("Status"), Text("Calls")],
          //     )),
          Container(
              child: Row(
            children: [
              Column(
                children: [Text("merna")],
              ),
              SizedBox(width: 20),
              Column(
                children: [
                  SizedBox(
                    height: 25,
                  ),
                  Text("merna"),
                  Text("hey")
                ],
              ),
              Spacer(),

              Container(

                color: Colors.red,
                child: Text("25.2"),
              )
            ],
          )),
          Row(
            children: [Text("hello")],
          ),
          Row(
            children: [Text("hello")],
          ),
          Row(
            children: [Text("hello")],
          ),
          Row(
            children: [Text("hello")],
          ),
          Row(
            children: [Text("merna")],
          ),
          Row(
            children: [Text("merna")],
          ),

          Row(
            children: [Text("hell"),

            ],
          ),
          Row(
            children: [Text("hell"),Spacer(),
              Container(
                color: Colors.green,
         child:     FloatingActionButton(
           

                  onPressed: (){},  child: Icon(Icons.add))),
            SizedBox(width: 25,)
            ],
          ),

          Container(
              color: Colors.white,
              child: Center(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 80,
                    color: Colors.green,
                      child: Column(children: [
                    Icon(
                      Icons.chat_bubble,
                      size: 40,
                    ),
                    Text("Chats")
                  ])),
                  Column(children: [
                    Icon(
                      Icons.update_disabled_rounded,
                      size: 40,
                    ),
                    Text("Updates")
                  ]),
                  Column(children: [
                    Icon(
                      Icons.chat_bubble,
                      size: 40,
                    ),
                    Text("Communicatios")
                  ]),
                  Column(children: [
                    Icon(
                      Icons.phone_android_rounded,
                      size: 40,
                    ),
                    Text("Calls")
                  ]),
                ],
              ))),

        ],
      ),

          ),
    );
  }
}
