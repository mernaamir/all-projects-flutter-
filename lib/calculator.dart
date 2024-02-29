import 'package:flutter/material.dart';

class calculator extends StatelessWidget {
  const calculator({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text("Calculator"),
          backgroundColor: Colors.blue,
        ),
        body: Column(
          children: [
            Expanded(
                child: Container(
                  width: double.infinity,
              height: 10,
              color: Colors.red,
              child: Text("hey"),
            )),
            Expanded(child:
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    Container(color: Colors.blue
                      ,child: Text("1"),),
                    Container(child: Text("1")),
                    Container(child: Text("1")),
                    Container(child: Text("1"))


                  ],
                )
            ),
            Expanded(child: Container(
              child: Text("hello"),
            )),
            Expanded(child: Container(
              child: Text("hello"),

            ))
          ],
        ));
  }
}
// mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Row(
//             children: [
//               Container(
//
//
//                 color: Colors.red,
//               child:  Text("anything",),
//
//               )
//             ],
//           ),
//           Row(
//
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//
//               Container(
//
// color: Colors.blue,
//                 child: Text("7",style: TextStyle(color: Colors.white,fontSize: 50),),
//               ),
//               Container(
//                 child: Text("8"),),
//               Container(child: Text("9"),),
//               Container(child: Text("/"),)
//             ],
//           )
//           ,
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//
//               Container(
//                 child: Text("7"),
//               ),
//               Container(
//                 child: Text("8"),),
//               Container(child: Text("9"),),
//               Container(child: Text("/"),)
//             ],
//
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//
//               Container(
//                 child: Text("7"),
//               ),
//               Container(
//                 child: Text("8"),),
//               Container(child: Text("9"),),
//               Container(child: Text("/"),)
//             ],
//
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//
//               Container(
//                 child: Text("7"),
//               ),
//               Container(
//                 child: Text("8"),),
//               Container(child: Text("9"),),
//               Container(child: Text("/"),)
//             ],
//
//           )
//
//         ],
//       )
