import 'package:flutter/material.dart';
import 'PizzaItems.dart';

class ProductsPage extends StatefulWidget {
  const ProductsPage({Key key}) : super(key: key);

  @override
  _ProductsPageState createState() => _ProductsPageState();
}

class _ProductsPageState extends State<ProductsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFFFFFF),
        title: Text(
          'Our Menu',
          style: TextStyle(
              color: Color(0xff800808),
              fontSize: 20,
              fontWeight: FontWeight.w800),
        ),
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
      ),
      body: SingleChildScrollView(
        //changed it right now from row to column
        child: Column(
          children: [
            PizzaItems(),
          ],
        ),
      ),
    );
  }
}
