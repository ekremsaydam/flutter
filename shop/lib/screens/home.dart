import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      alignment: Alignment.topLeft,
      margin: EdgeInsets.only(left: 50.0,top: 50.0),
      color: Colors.red,
      child: Text(
        "Asus Laptop",
        textDirection: TextDirection.ltr,
      ),
    ));
  }
}
