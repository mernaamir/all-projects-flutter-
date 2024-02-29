import 'package:flutter/material.dart';

class chat extends StatelessWidget {
  static const String routeName="chat";
  const chat({super.key});


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: Colors.black,
        leading: Icon(
          Icons.arrow_back,
          color: Colors.white,
        ),
        title: Row(
          children: [
            CircleAvatar(
              radius: 25,
              backgroundImage: AssetImage("assets/images/1.jpg"),
            )

            ,
            SizedBox(
              width: 15,
              height: 10,
            ),
            Text(
              "Person",
              style: TextStyle(color: Colors.white, fontSize: 33),
            )
          ],
        ),
        actions: [
          Icon(
            Icons.video_call,
            color: Colors.white,
          ),
          SizedBox(
            width: 20,
          ),
          Icon(
            Icons.call,
            color: Colors.white,
          ),
          SizedBox(
            width: 20,
          ),
          Icon(
            Icons.more_vert_rounded,
            color: Colors.white,
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Row(children: [
                SizedBox(
                  width: 10,
                ),
                CircleAvatar(
                  radius: 35,
                  backgroundImage: AssetImage("assets/images/1.jpg"),
                ),
                SizedBox(
                  height: 25,
                  width: 10,
                ),
                Expanded(
                  child: TextField(
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                        hintText: "This is first Massege",
                        hintStyle: TextStyle(color: Colors.white, fontSize: 19),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(50))),
                  ),
                ),
                SizedBox(
                  width: 10,
                )
              ]),
              SizedBox(
                height: 40,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: TextField(
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50)),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                              borderRadius: BorderRadius.circular(50)),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                              borderRadius: BorderRadius.circular(50)),
                          hintText: "This is Seconed Masssege",
                          hintStyle:
                              TextStyle(color: Colors.white, fontSize: 18)),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  CircleAvatar(
                    radius: 35,
                    backgroundImage: AssetImage("assets/images/2.jpg"),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                ],
              ),
            ],
          ),
          Column(
            children: [
              Row(
                children: [
                  Expanded(
                      child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                            borderSide: BorderSide(
                              color: Colors.white,
                            )),
                        hintText: "Type a Message",
                        hintStyle: TextStyle(color: Colors.white, fontSize: 18),
                        suffixIcon: Icon(
                          Icons.attach_file,
                          color: Colors.white,
                        ),
                        prefixIcon: Icon(
                          Icons.face,
                          color: Colors.white,
                        )),
                  )),
                  SizedBox(
                  width: 8,
                  ),
                  Container(
                    width: 60,
                    height: 60,

                    decoration: BoxDecoration(
                      border: Border.all( color: Colors.white),
                      shape: BoxShape.circle,
                      color: Colors.black,

                    ),

                    child: Icon(
                      Icons.mic,
                      color: Colors.white,
                    ),
                  ),

                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
