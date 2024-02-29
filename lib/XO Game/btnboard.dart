import 'package:flutter/material.dart';

class btnboard extends StatelessWidget {
  String label="X";
  Function onClick;
  int index;



  btnboard(
      {required this.index,
      required this.onClick,
      required this.label,
      super.key});

  @override
  Widget build(BuildContext context) {
    Color getColor(){
if(label=="X"){
  return Colors.red;
}else{
  return Colors.green;
}
    }
    // TODO: implement build
    return Expanded(
      child: Card(
        child: Container(
          color: Color(0xFF0099cb),
          child: ElevatedButton(
            onPressed: () {
              onClick(index);
            },
            child: Text(
              "$label",
              style: TextStyle(
                  color:getColor() , fontSize: 80, fontWeight: FontWeight.w800),
            ),
            style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF0099cb),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12))),
          ),
        ),
      ),
    );
  }
}
