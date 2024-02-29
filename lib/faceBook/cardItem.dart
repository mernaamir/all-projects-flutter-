import 'package:flutter/material.dart';
import 'package:session1/faceBook/cardModel.dart';

class cardItem extends StatelessWidget {
  CardModel cardmodel;

  cardItem({required this.cardmodel, super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Card(
      child: Stack(
        // alignment: Alignment.bottomCenter,
        children: [
          Container(
            height: 140,
            width: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                image: AssetImage( cardmodel.ImagePath ?? " "),
                fit: BoxFit.cover
              )
            ),
          ),
          // ClipRRect(
          //   borderRadius: BorderRadius.circular(30),
          //   child: Image.asset(
          //     cardmodel.ImagePath ?? " ",
          //     width: 85,
          //     height: 120,
          //     fit: BoxFit.cover,
          //
          //   ),
          // ),
          Container(
            height: 140,
            width: 100,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: CircleAvatar(
                    backgroundColor: Colors.blue,
                    child: Icon(Icons.person,size: 30,color: Colors.white,),
                  ),
                ),
                Spacer(),
                Align(alignment: Alignment.center,
                    child: Text("Owner",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),))
              ],
            ),
          ),
          // Column(
          //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //   children: [Text(cardmodel.name)],
          // )
        ],
      ),
    );
  }
}
