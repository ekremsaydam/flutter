import 'package:f05_etrade/db/dbHelper.dart';
import 'package:f05_etrade/models/product.dart';
import 'package:flutter/material.dart';

class ProductList extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ProductListState();
  }
}

class ProductListState extends State {
  DbHelper dbHelper = new DbHelper();
  List<Product> products;
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: productListItems(),
    );
  }

  ListView productListItems() {
    if (products == null) {
      products = new List<Product>();
      getData();
    }
    return ListView.builder(
      itemCount: count,
      itemBuilder: (BuildContext context, int position) {
        return Card(
          color: Colors.amberAccent,
          elevation: 2.0,
          child: ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.green,
              child: Text("A"),
            ),
            title: Text(this.products[position].name),
            subtitle: Text(this.products[position].description),
            onTap: () {

            },
          ),
        );
      },
    );
  }

  void getData() {
    var dbFuture = dbHelper.initializeDb();
    dbFuture.then((result) {
      var productsFuture = dbHelper.getProducts();
      productsFuture.then((data) {
        List<Product> productsData = new List<Product>();
        count = data.length;
        for (int i = 0; i < count; i++) {
          productsData.add(Product.fromObject(data[i]));
        }
        setState(() {
          products = productsData;
          this.count = count;
        });
      });
    });
  }
}
