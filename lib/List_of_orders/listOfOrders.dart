import 'package:flutter/material.dart';
import 'package:task1/view_orders/viewOrders.dart';

class list extends StatefulWidget {
  final String? name;
  final String? titleOfMedicine;
  final int? signature;

  list({  this.name,  this.titleOfMedicine,  this.signature});

  @override
  State<list> createState() => _listState();
}

class _listState extends State<list> {
  bool isAdult =true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "List Of orders"
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              padding: EdgeInsets.all(40.0),
              decoration: BoxDecoration(
                color: Colors.blueGrey,
                border: Border.all(color: Colors.deepOrangeAccent,width: 5),
              ),child: Column(
              children: [
                Text(
                  widget.name ?? 'Patient Name',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold
                  ),
                ),
                Divider(),
                Text(
                  widget.titleOfMedicine ?? 'Medicine Name',
                  style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold
                  ),
                ),
                Divider(),
                Text(
                  widget.signature == null ? 'signature' : widget.signature.toString() ,
                  style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ],
            ),
            ),

          ],

        ),
      ),
    );
  }
}
