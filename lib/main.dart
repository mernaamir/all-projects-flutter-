
import 'package:flutter/material.dart';
import 'package:session1/RouteApp/mainpage.dart';
import 'package:session1/contacts/contact.dart';

import 'package:session1/XO Game/game.dart';
import 'package:session1/XO Game/login.dart';
import 'package:session1/faceBook/loginface.dart';

import 'package:session1/Facebook.dart';
import 'package:session1/task3/contaction.dart';
import 'package:session1/task4/validators.dart';


import 'package:session1/chat.dart';
import 'package:session1/task.dart';
import 'package:session1/calculator.dart';
import 'slider.dart';
// import 'home_screen.dart';
import 'counter.dart';
import 'contacts/contact.dart';

void main(){
   runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      initialRoute: "contaction",
      routes: {
        "login":(context)=>Login(),
        "game":(context)=>game(),
        "contact":(context)=>contact(),
        "loginface":(context)=>face2(),
        "chatt":(context)=>chat(),
        "RouteApp":(context)=>mainpage(),
        "contaction":(context)=>contaction(),
        "vaild":(context)=>validators(),

      },
    );
  }
}




















// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(),
//         body: Column(
//           children: [
//             Row(
//               children: [
//                 Expanded(
//                   child: Container(
//                       color: Colors.purple,
//                       child: Text(
//                         "news",
//                         style: TextStyle(fontSize: 35),
//                         textAlign: TextAlign.center,
//                       )),
//                 ),
//                 SizedBox(width: 3),
//                 Expanded(
//                     child: Container(
//                   color: Colors.purple,
//                   child: Text(
//                     "articles",
//                     style: TextStyle(fontSize: 35),
//                     textAlign: TextAlign.center,
//                   ),
//                 ))
//               ],
//             ),
//             SizedBox(height: 8),
//             Row(
//               children: [
//                 Expanded(
//                   child: Container(
//                       color: Colors.purple,
//                       child: Text(
//                         "news",
//                         style: TextStyle(fontSize: 35),
//                         textAlign: TextAlign.center,
//                       )),
//                 ),
//                 SizedBox(width: 3),
//                 Expanded(
//                     child: Container(
//                   color: Colors.purple,
//                   child: Text(
//                     "articles",
//                     style: TextStyle(fontSize: 35),
//                     textAlign: TextAlign.right,
//                   ),
//                 ))
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
