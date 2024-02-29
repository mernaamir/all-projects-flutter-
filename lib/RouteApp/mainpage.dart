import 'package:flutter/material.dart';
import 'package:session1/RouteApp/Android.dart';
import 'package:session1/RouteApp/ios.dart';
import 'package:session1/RouteApp/fullstack.dart';



class mainpage extends StatelessWidget {
  static const String routeName="RoutemainApp";
  mainpage({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "RouteAppOne",
          style: TextStyle(fontSize: 33, color: Colors.white),
        ),
        backgroundColor: Color(0xFF001f84),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
                margin: EdgeInsets.all(15),
                child: Image.asset("assets/images/Android.jpeg")),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              width: double.infinity,
              child: ElevatedButton(
                
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF104ad2),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => Android()));
                  },
                  child: Container(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      "Android Course",
                      style: TextStyle(fontSize: 25, color: Colors.white),
                    ),
                  )),
            ),
            Container(
                margin: EdgeInsets.all(15),
                child: Image.asset("assets/images/IOS.jpeg")),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              width: double.infinity,
              child: ElevatedButton(

                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF104ad2),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => ios()));
                  },
                  child: Container(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      "IOS Course",
                      style: TextStyle(fontSize: 25, color: Colors.white),
                    ),
                  )),
            ),
            Container(
                margin: EdgeInsets.all(15),
                child: Image.asset("assets/images/fullStack.jpeg")),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              width: double.infinity,
              child: ElevatedButton(

                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF104ad2),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  onPressed: () { Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => fullstack()));},
                  child: Container(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      "Full Stack",
                      style: TextStyle(fontSize: 25, color: Colors.white),
                    ),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
