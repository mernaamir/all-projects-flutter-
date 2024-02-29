import 'package:flutter/material.dart';
import 'package:session1/task4/connect.dart';

class validators extends StatefulWidget {
  static const String routeName = "vaild";

  const validators({super.key});

  @override
  State<validators> createState() => _validatorsState();
}

class _validatorsState extends State<validators> {
  List<connect> contacts = [];
  TextEditingController nameClient = TextEditingController();
  TextEditingController phoneClient = TextEditingController();
  bool isvisble = false;
  GlobalKey<FormState> formstate = GlobalKey();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("contacts Screen"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: Form(
              key: formstate,
              child: TextFormField(
                validator: (value) {
                  if (value!.isEmpty) {
                    return "invailed";
                  }
                },
                controller: nameClient,
                decoration: InputDecoration(
                  hintText: "enter your name",
                  hintStyle: TextStyle(color: Colors.black, fontSize: 25),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                      borderSide: BorderSide(
                        color: Colors.grey,
                      )),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                      borderSide: BorderSide(color: Colors.blue)),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: Form(

              child: TextFormField(
                keyboardType: TextInputType.number,
                controller: phoneClient,
                decoration: InputDecoration(
                  hintText: "enter your phone",
                  hintStyle: TextStyle(color: Colors.black, fontSize: 25),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                      borderSide: BorderSide(color: Colors.grey)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                      borderSide: BorderSide(color: Colors.blue)),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 35,
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
              ),
              onPressed: () {
                if (formstate.currentState!.validate()) {
                  setState(() {
                    isvisble = true;
                    contacts.add(connect(
                        name: nameClient.text, phone: phoneClient.text));
                  });
                }

                nameClient.clear();
                phoneClient.clear();
              },
              child: Text(
                "add",
                style: TextStyle(color: Colors.black, fontSize: 35),
              )),
          Expanded(
            child: Visibility(
                visible: isvisble,
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.white,
                      ),
                      margin: EdgeInsets.all(15),
                      height: 100,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.grey,
borderRadius: BorderRadius.circular(20),

                        ),
                        child: Column(

                          children: [
                            Row(
                              children: [
                                Text(
                                  ' name : ${contacts[index].name}',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold, fontSize: 30),
                                ),
                                SizedBox(width: 100,),
                                InkWell(
                                    onTap: () {
                                      setState(() {
                                        contacts.removeAt(index);
                                      });
                                    },
                                    child: Icon(Icons.delete,color: Colors.red,size: 35,))
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  'phone: ${contacts[index].phone}',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold, fontSize: 26),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    );
                  },
                  itemCount: contacts.length,
                )),
          )
        ],
      ),
    );
  }
}
