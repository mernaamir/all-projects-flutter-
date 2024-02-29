import 'package:flutter/material.dart';

class slider extends StatefulWidget {
  const slider({super.key});

  @override
  State<slider> createState() => _sliderState();
}

class _sliderState extends State<slider> {
  @override
  Widget build(BuildContext context) {
    int index = 1;
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Slider"),
        centerTitle: true,
        backgroundColor: Colors.cyan,
      ),
      body: Column(
        children: [
          Container(
              child: Image.asset(
            "assets/images/$index.jpg",
            width: double.infinity,
            fit: BoxFit.fill,
          )),
          Row(
            children: [
              FloatingActionButton(
                  onPressed: () {
                    index--;
                    setState(() {

                    });
                  }, child: Icon(Icons.arrow_back_ios)),
              Spacer(),
              FloatingActionButton(
                onPressed: () {
                  index++;
                  setState(() {

                  });
                },
                child: Icon(Icons.arrow_forward_ios),
              )
            ],
          )
        ],
      ),
    );
  }
}
