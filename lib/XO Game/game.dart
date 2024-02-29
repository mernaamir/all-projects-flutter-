import 'package:flutter/material.dart';
import 'package:session1/XO Game/btnboard.dart';
import 'package:session1/XO Game/login.dart';
import 'package:session1/XO%20Game/playermodel.dart';

class game extends StatefulWidget {
  const game({super.key});
  static const String routeName="game";

  @override
  State<game> createState() => _gameState();
}

class _gameState extends State<game> {

  int score1 = 0;
  int score2 = 0;

  int counter = 1;

  List<String> boardState = ["", "", "", "", "", "", "", "", ""];

  @override
  Widget build(BuildContext context) {

    playermodel model=ModalRoute.of(context)!.settings.arguments as playermodel;
    // TODO: implement build

    return Scaffold(
      backgroundColor: Color(0xFF191a4a),

      body: Column(

        children: [
          Expanded(
            child: Row(

              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(model.playername1,
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 30,color: Colors.white)),
                      Text("$score1",
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 30,color: Colors.white))
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [

                      Text(
                        model.playername2,
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 30,color: Colors.white),
                      ),
                      Text(
                        "$score2",
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 30,color: Colors.white),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [

                btnboard(
                  label: boardState[0],
                  index: 0,
                  onClick: onBoardbtnClick,
                ),

                btnboard(
                  label: boardState[1],
                  index: 1,
                  onClick: onBoardbtnClick,
                ),
                btnboard(
                    label: boardState[2], index: 2, onClick: onBoardbtnClick)
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                btnboard(
                  label: boardState[3],
                  index: 3,
                  onClick: onBoardbtnClick,
                ),
                btnboard(
                    label: boardState[4], index: 4, onClick: onBoardbtnClick),
                btnboard(
                    label: boardState[5], index: 5, onClick: onBoardbtnClick)
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                btnboard(
                  label: boardState[6],
                  index: 6,
                  onClick: onBoardbtnClick,
                ),
                btnboard(
                  label: boardState[7],
                  index: 7,
                  onClick: onBoardbtnClick,
                ),
                btnboard(
                  label: boardState[8],
                  index: 8,
                  onClick: onBoardbtnClick,
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  onBoardbtnClick(index) {
    if (boardState[index].isNotEmpty) {
      return;
    }

    if (counter.isOdd) {
      boardState[index] = "X";
      score1 += 2;
      bool win = checkWin("X");
      if(win){
        score1+=10;
        boardreset();
      }
    } else {
      boardState[index] = "O";
      score2 += 2;
      bool win = checkWin("O");
      if(win){
        score2+=10;
        boardreset();
      }
    }
    counter++;
    setState(() {

    });
  }
boardreset(){
    boardState=["","","","","","","","",""];
}
  bool checkWin(String symbol) {
    for (int i = 0; i < 9; i += 3) {
      if (symbol == boardState[i] && symbol == boardState[i + 1] &&
          symbol == boardState[i + 2]) {
        return true;
      }
    }
      for (int i = 0; i < 3; i ++) {
        if (symbol == boardState[i] && symbol == boardState[i + 3] &&
            symbol == boardState[i + 6]) {
          return true;
        }
      }


        if (symbol == boardState[0] && symbol == boardState[4] &&
            symbol == boardState[8]) {
          return true;
        }

        if (symbol == boardState[2] && symbol == boardState[4] &&
            symbol == boardState[6]) {
          return true;
        }


        return false;
      }
    }





