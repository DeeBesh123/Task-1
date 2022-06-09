import 'package:flutter/material.dart';
import '../view_orders/viewOrders.dart';
class home extends StatelessWidget {
  const home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>const viewOrder()));
          },
          child: Text(
            "View Order"
          ),
        ),
      ),
    );
  }
}
