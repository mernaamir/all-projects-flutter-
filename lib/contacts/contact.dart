import 'package:flutter/material.dart';

import 'package:session1/contacts/contactData.dart';

class contact extends StatefulWidget {
  const contact({super.key});

  static const String routeName = "contact";

  @override
  State<contact> createState() => _contactState();
}

class _contactState extends State<contact> {
  List<contactData> contacts = [];
  TextEditingController nameUser = TextEditingController();
  TextEditingController phone = TextEditingController();
  bool isvisible = false;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Contacts Screen",
          style: TextStyle(
              fontSize: 30, color: Colors.white, fontWeight: FontWeight.w900),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          TextFormField(
            controller: nameUser,
            decoration: InputDecoration(hintText: "enter your email"),
          ),
          SizedBox(
            height: 10,
          ),
          TextField(
            controller: phone,
            decoration: InputDecoration(hintText: "enter your Phone"),
          ),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MaterialButton(
                  onPressed: contacts.length == 3
                      ? null
                      : () {
                          setState(() {
                            isvisible = true;
                            contacts.add(contactData(
                                name: nameUser.text, phone: phone.text));
                          });

                          nameUser.clear();
                          phone.clear();
                        },
                  child: Text("add"),
                ),
                MaterialButton(
                  onPressed: contacts.isEmpty ? null : () {
                    setState(() {
                      contacts.removeLast();

                    });
                  },
                  child: Text("remove"),
                ),
              ],
            ),
          ),
          Expanded(
            child: Visibility(
                visible: isvisible,
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return Row(
                      children: [
                        Text(contacts[index].name),
                        Text(contacts[index].phone),
                      ],
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
