import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:task1/List_of_orders/listOfOrders.dart';

class viewOrder extends StatefulWidget {
  const viewOrder({Key? key}) : super(key: key);

  @override
  State<viewOrder> createState() => _viewOrder();
}

class _viewOrder extends State<viewOrder> {
  final formKey = GlobalKey<FormState>();
  String name = "";
  String titleOfMedicine = "";
  int? signature;
  bool isAdult = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.teal,
        title: Text("Presciption"),
      ),
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            Padding(padding: EdgeInsets.fromLTRB(24, 30, 24, 30)),
            Row(
              children: [
                Image.network(
                  "https://imgs.search.brave.com/YEfrzsmh-gvkfDc7oIQX8lhu6gkHbwtM6-R5OVthX10/rs:fit:512:512:1/g:ce/aHR0cDovL2ljb25z/Lmljb25hcmNoaXZl/LmNvbS9pY29ucy9h/bGVjaXZlL2ZsYXR3/b2tlbi81MTIvQXBw/cy1HYWxsZXJ5LWlj/b24ucG5n",
                  width: 120,
                ),
                SizedBox(
                  width: 20.0,
                ),
                Image.network(
                  "https://imgs.search.brave.com/YEfrzsmh-gvkfDc7oIQX8lhu6gkHbwtM6-R5OVthX10/rs:fit:512:512:1/g:ce/aHR0cDovL2ljb25z/Lmljb25hcmNoaXZl/LmNvbS9pY29ucy9h/bGVjaXZlL2ZsYXR3/b2tlbi81MTIvQXBw/cy1HYWxsZXJ5LWlj/b24ucG5n",
                  width: 120,
                ),
                SizedBox(
                  width: 20.0,
                ),
                Image.network(
                  "https://imgs.search.brave.com/YEfrzsmh-gvkfDc7oIQX8lhu6gkHbwtM6-R5OVthX10/rs:fit:512:512:1/g:ce/aHR0cDovL2ljb25z/Lmljb25hcmNoaXZl/LmNvbS9pY29ucy9h/bGVjaXZlL2ZsYXR3/b2tlbi81MTIvQXBw/cy1HYWxsZXJ5LWlj/b24ucG5n",
                  width: 120,
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            Container(
              padding: const EdgeInsets.only(left: 40, right: 40),
              child: Form(
                key: formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: "Patient Name",
                        filled: true,
                        prefixIcon: Icon(
                          Icons.person,
                          color: Colors.black45,
                        ),
                      ),
                      validator: (value) {
                        if (value!.isEmpty ||
                            !RegExp(r'^[a-z A-Z]+$').hasMatch(value)) {
                          return "Please enter the correct name";
                        } else {
                          return null;
                        }
                      },
                    ),
                    SizedBox(
                      height: 35.0,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: "Title For Madicine",
                        filled: true,
                        prefixIcon: Icon(
                          Icons.person,
                          color: Colors.black45,
                        ),
                      ),
                      validator: (value) {
                        if (value!.isEmpty ||
                            !RegExp(r'^[a-z A-Z]+$').hasMatch(value)) {
                          return "Please enter the correct name";
                        } else {
                          return null;
                        }
                      },
                    ),
                    SizedBox(
                      height: 35.0,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          labelText: "Signature",
                          filled: true,
                          prefixIcon: Icon(
                            Icons.person,
                          )),
                      validator: (value) {
                        if (value!.isEmpty ||
                            !RegExp(r'^[a-z A-Z]+$').hasMatch(value)) {
                          return "Please enter the correct name";
                        } else {
                          return null;
                        }
                      },
                    ),
                    SizedBox(
                      height: 35,
                    ),
                    ElevatedButton(
                        onPressed: () async {
                          final boolData = await Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => list(
                                        name: name,
                                        titleOfMedicine: titleOfMedicine,
                                        signature: signature,
                                      )
                              )
                          );
                          setState(() {
                            isAdult = boolData;
                          });
                        },
                        child: Text("Saved"))
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
