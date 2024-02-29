import 'package:session1/XO Game/game.dart';
import 'package:flutter/material.dart';
import 'package:session1/XO Game/playermodel.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  static const String routeName = "login";

  @override
  Widget build(BuildContext context) {
    TextEditingController player1 = TextEditingController();
    TextEditingController player2 = TextEditingController();

    // TODO: implement build
    return Scaffold(
      backgroundColor: Color(0xFF191a4a),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Enter Player names",
            style: TextStyle(
                fontSize: 30, fontWeight: FontWeight.w900, color: Colors.white),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: TextField(

              controller: player1,
              style: TextStyle(
                color: Colors.white,
                  fontSize: 20

              ),
              decoration: InputDecoration(
                  fillColor: Color(0xff101032),
                  filled: true,
                  label: Text("Player 1 ",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 25)),

                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50))),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: TextField(
              controller: player2,
                style: TextStyle(
                    color: Colors.white,
                  fontSize: 20
                ),
              decoration: InputDecoration(
                  fillColor: Color(0xff101032),
                  filled: true,
                  label: Text("Player 2",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 25)),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50))),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
              margin: EdgeInsets.all(10),
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF0099cb)),
                onPressed: () {
                  Navigator.pushNamed(context, game.routeName,
                      arguments: playermodel(player1.text, player2.text));
                },
                child: Text("Start Game",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 25)),
              ))
        ],
      ),
    );
  }
}
