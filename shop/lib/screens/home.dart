import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      alignment: Alignment.topLeft,
      //margin: EdgeInsets.only(left: 50.0, top: 50.0),
      padding: EdgeInsets.only(top: 30.0),
      color: Colors.red,
      child: Column(
        children: <Widget>[
          Row(
            textDirection: TextDirection.ltr,
            children: <Widget>[
              Text(
                "Asus Laptop",
                textDirection: TextDirection.ltr,
                style: TextStyle(fontSize: 20.0),
              ),
              Expanded(
                  child: Text(
                "16Gb Ram, 128 Gb SSD, Intel i7",
                textDirection: TextDirection.ltr,
                style: TextStyle(fontSize: 20.0),
              )),
            ],
          ),
          Row(
            textDirection: TextDirection.ltr,
            children: <Widget>[
              Text(
                "HP Laptop",
                textDirection: TextDirection.ltr,
                style: TextStyle(fontSize: 20.0),
              ),
              Expanded(
                  child: Text(
                "32Gb Ram, 512 Gb SSD, Intel i7",
                textDirection: TextDirection.ltr,
                style: TextStyle(fontSize: 20.0),
              )),
            ],
          ),
          Directionality(
            child: OrderButton(),
            textDirection: TextDirection.ltr,
          )
        ],
      ),
    ));
  }
}

class OrderButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var button = Container(
      margin: EdgeInsets.only(top: 50.0),
      child: RaisedButton(
        elevation: 5.0,
        child: Text("Go to checkout"),
        onPressed: () {},
      ),
    );

    return button;
  }
}
