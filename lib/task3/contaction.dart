import 'package:flutter/material.dart';
import 'package:session1/task3/detailCon.dart';

class contaction extends StatefulWidget {
  static const String routeName = "contaction";

  contaction({super.key});

  @override
  State<contaction> createState() => _contactionState();
}

class _contactionState extends State<contaction> {
  TextEditingController nameUser = TextEditingController();

  TextEditingController phoneUser = TextEditingController();

  List<detailcon> contacts = [];

  bool isvisible = false;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Scaffold(
      backgroundColor: Colors.grey,
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        title: Text(
          "Contacts Screen",
          style: TextStyle(color: Colors.white, fontSize: 30),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          TextFormField(
            controller: nameUser,
            decoration: InputDecoration(
              hintText: "enter your name",
              hintStyle: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w900,
                  fontSize: 20),
              suffixIcon: Icon(
                Icons.edit,
                color: Colors.blue,
                size: 30,
              ),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                  borderSide: BorderSide(color: Colors.transparent)),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.transparent),
                borderRadius: BorderRadius.circular(50),
              ),
              fillColor: Colors.white,
              filled: true,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          TextFormField(
            controller: phoneUser,
            keyboardType: TextInputType. number,
            decoration: InputDecoration(

              hintText: "enter your phone",
              hintStyle: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w900,
                  fontSize: 20),
              suffixIcon: Icon(
                Icons.phone,
                color: Colors.red,
                size: 30,
              ),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                  borderSide: BorderSide(color: Colors.transparent)),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.transparent),
                borderRadius: BorderRadius.circular(50),
              ),
              fillColor: Colors.white,
              filled: true,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                  child: Expanded(
                      child: ElevatedButton(
                onPressed: contacts.length == 3
                    ? null
                    : () {
                        setState(() {
                          isvisible = true;
                          contacts.add(detailcon(
                              name: nameUser.text, phone: phoneUser.text));
                        });
                        nameUser.clear();
                        phoneUser.clear();
                      },
                child: Text(
                  "Add",
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
              ))),
              Expanded(
                  child: ElevatedButton(
                      style:
                          ElevatedButton.styleFrom(backgroundColor: Colors.red),
                      onPressed: contacts.isEmpty
                          ? null
                          : () {
                              setState(() {
                                contacts.removeLast();
                              });
                            },
                      child: Text("Delete",style: TextStyle(
                        fontSize: 25,
                        color: Colors.black,
                        fontWeight: FontWeight.bold
                      ),),
                  )),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: Visibility(
                visible: isvisible,
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.white,
                      ),
                      margin: EdgeInsets.all(15),
                      height: 100,
                      child: Column(
                        children: [
                          Text(
                            ' name : ${contacts[index].name}',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 30),
                          ),
                          Text(
                            'phone: ${contacts[index].phone}',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 26),
                          )
                        ],
                      ),
                    );
                  },
                  itemCount: contacts.length,
                )),
          ),
        ],
      ),
    );
  }
}
