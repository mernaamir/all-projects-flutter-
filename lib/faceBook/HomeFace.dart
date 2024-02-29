import 'package:flutter/material.dart';
import 'package:session1/faceBook/cardModel.dart';
import 'cardItem.dart';

class homeFace extends StatelessWidget {
  const homeFace({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child:
              Row(
                children: [
                  cardItem(
                    cardmodel: CardModel(
                        name: "hey", ImagePath: "assets/images/3.jpg"),
                  ),
                  cardItem(
                    cardmodel: CardModel(
                        name: "hhhhhhhhh", ImagePath: "assets/images/3.jpg"),
                  ),
                  cardItem(
                    cardmodel: CardModel(
                        name: "hhhhhhhhh", ImagePath: "assets/images/3.jpg"),
                  ),
                  cardItem(
                    cardmodel: CardModel(
                        name: "hey", ImagePath: "assets/images/3.jpg"),
                  ),
                  cardItem(
                    cardmodel: CardModel(
                        name: "hey", ImagePath: "assets/images/3.jpg"),
                  ),
                  cardItem(
                    cardmodel: CardModel(
                        name: "hey", ImagePath: "assets/images/3.jpg"),
                  )
                ],
              )),
          SizedBox(
            height: 15,
          ),

          Row(
            children: [
              Column(
                children: [
                  Icon(
                    Icons.person_2_rounded,
                    size: 50,
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    "Owner",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.w900),
                  ),
                  Row(
                    children: [
                      Text("3h"),
                      SizedBox(
                        width: 3,
                      ),
                      Icon(
                        Icons.public,
                        size: 15,
                      )
                    ],
                  )
                ],
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),

          Row(
            children: [
              Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    "My post",
                    style: TextStyle(fontWeight: FontWeight.w400, fontSize: 30),
                  ))
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  child: Text("100")),
              Image.asset(
                "assets/images/like.jpg",
                width: 30,
              ),
              Spacer(),
              Text("100 comment")
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Divider(),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  child: Icon(Icons.linked_camera)),
              Text("Like"),
              Spacer(),
              Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  child: Icon(Icons.comment)),
              Text("Comment"),
              Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  child: Icon(Icons.share)),
              Text("Share"),
              SizedBox(
                width: 5,
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Divider(),

          Row(
            children: [
              Column(
                children: [
                  Icon(
                    Icons.person_2_rounded,
                    size: 50,
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    "Owner",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.w900),
                  ),
                  Row(
                    children: [
                      Text("3h"),
                      SizedBox(
                        width: 3,
                      ),
                      Icon(
                        Icons.public,
                        size: 15,
                      )
                    ],
                  )
                ],
              )
            ],
          ),
          Row(
            children: [
              Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    "My post",
                    style: TextStyle(fontWeight: FontWeight.w400, fontSize: 30),
                  ))
            ],
          ),
          SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  child: Text("100")),
              Image.asset(
                "assets/images/like.jpg",
                width: 30,
              ),
              Spacer(),
              Text("100 comment")
            ],
          ),
          Divider(),
          SizedBox(
            height: 10,
          ),

          Row(
            children: [
              Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  child: Icon(Icons.linked_camera)),
              Text("Like"),
              Spacer(),
              Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  child: Icon(Icons.comment)),
              Text("Comment"),
              Spacer(),
              Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  child: Icon(Icons.share)),
              Text("Share"),
              SizedBox(
                width: 5,
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Divider(),









































        ],
      ),
    );
  }
}
