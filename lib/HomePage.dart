//homePage App bar and icons
import 'package:flutter/material.dart';
import 'main.dart';
import 'SearchBar.dart';
import 'MostSelling.dart';
import 'PicsSlideShow.dart';
import 'ProductPage.dart';
import 'SignInPage.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFFFFFF),
        title: Text(
          'Rihno\'s Pizzeria',
          style: TextStyle(
              color: Color(0xff800808),
              fontSize: 20,
              fontWeight: FontWeight.w800),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: IconButton(
                icon: Icon(
                  Icons.notifications,
                  color: Color(0xff800808),
                ),
                onPressed: () {}),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.shopping_cart,
              color: Color(0xff7d0303),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Search(),
            PicsSlideShow(),
            MostSellingWidget(),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                iconSize: 40,
                // alignment: Alignment.center,
                onPressed: () {
                  //Navigator.push(context, ScaleRoute(page: HomePage()));
                },
                icon: Icon(
                  Icons.home_rounded,
                  color: Color(0xff800808),
                ),
              ),
              IconButton(
                autofocus: true,
                iconSize: 40,
                // alignment: Alignment.center,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ProductsPage()),
                  );
                },
                icon: Icon(
                  Icons.local_pizza_outlined,
                  color: Color(0xff800808),
                ),
              ),
              IconButton(
                iconSize: 40,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MapScreen()),
                  );
                },
                icon: Icon(
                  Icons.pin_drop_outlined,
                  color: Color(0xff800808),
                ),
              ),
              IconButton(
                iconSize: 40,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SignInPage()),
                  );
                },
                icon: Icon(
                  Icons.person_outline,
                  color: Color(0xff800808),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
