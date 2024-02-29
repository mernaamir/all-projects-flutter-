import 'package:flutter/material.dart';
import 'package:session1/faceBook/cardModel.dart';
import 'package:session1/faceBook/HomeFace.dart';


import 'chat.dart';

class face2 extends StatelessWidget {
  face2({super.key});
  static const String routeName="loginface";

  List <CardModel> cards=[];

  addDummyData() {
    for (int i=0;i<10;i++) {
// cards.add(CardModel(name: "hello",ImagePath:"assets/images/logo.png"));
    }
  }


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SafeArea(
      child: Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: Color(0xFF3b5999),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Image.asset("assets/images/logo.png",
                      width: 50, height: 50),
                ),
                SizedBox(
                  height: 60,
                ),
                Container(
                  width: 320,
                  child: TextField(
                    decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF9cb0dc)),
                        ),
                        hintText: "Email or Phone",
                        hintStyle:
                        TextStyle(color: Color(0xFF9cb0dc), fontSize: 20)),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Container(
                  width: 320,
                  child: TextField(
                      decoration: InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFF9cb0dc)),
                          ),
                          hintText: "PassWord",
                          hintStyle: TextStyle(
                            color: Color(0xFF9cb0dc),
                            fontSize: 20,
                          ))),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: 320,
                  child: MaterialButton(
                    color: Color(0xFF4e68a1),
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => homeFace()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Text(
                        "LoG In",
                        style: TextStyle(fontSize: 25, color: Colors.white),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 100,
                ),

                Container(
                  child: Text(
                    "Sign up For FaceBook?",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                    child: Text(
                      "Forget Password?",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ))
              ],
            ),
          )),
    );
  }
}