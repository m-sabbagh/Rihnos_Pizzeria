import 'package:flutter/material.dart';

class PizzaItems extends StatefulWidget {
  const PizzaItems({Key key}) : super(key: key);

  @override
  _PizzaItemsState createState() => _PizzaItemsState();
}

class _PizzaItemsState extends State<PizzaItems> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 700,
      width: double.infinity,
      child: Column(
        children: <Widget>[
          //BeforePizzaItems(),
          Expanded(
            child: MostSellingItems(),
          ),
        ],
      ),
    );
  }
}

class PizzaStrings extends StatelessWidget {
  String name;
  String description;
  String imageUrl;
  String rating;
  String price;

  PizzaStrings({
    Key key,
    @required this.name,
    @required this.description,
    @required this.imageUrl,
    @required this.rating,
    @required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          Container(
            child: Card(
                color: Colors.white,
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(5.0),
                  ),
                ),
                child: Container(
                  color: Colors.white,
                  width: 380,
                  height: 260,
                  child: Row(
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Container(
                              alignment: Alignment.topRight,
                              child: Image.asset(
                                'images/' + imageUrl + ".webp",
                                width: 380,
                                height: 155,
                                fit: BoxFit.fill,
                                alignment: Alignment.center,
                              )),
                          Container(
                            alignment: Alignment.topLeft,
                            padding: EdgeInsets.only(left: 5, top: 5),
                            child: Text(name,
                                style: TextStyle(
                                    color: Color(0xff000000),
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600)),
                          ),
                          Container(
                            alignment: Alignment.topLeft,
                            // padding: EdgeInsets.only(left: 5, top: 5),
                            child: Text(description,
                                style: TextStyle(
                                    color: Color(0xFF6e6e71),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400)),
                          ),
                          Container(
                            alignment: Alignment.topLeft,
                            padding:
                                EdgeInsets.only(left: 5, top: 5, right: 280),
                            child: Text(price,
                                style: TextStyle(
                                    color: Color(0xff000000),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600)),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(270, 0, 0, 0),
                            child: Container(
                              alignment: Alignment.topLeft,
                              child: FlatButton(
                                  color: Color(0xff800808),
                                  onPressed: () {},
                                  child: Text(
                                    'ORDER',
                                    style: TextStyle(color: Colors.white),
                                  )),
                            ),
                          )
                          // Divider(
                          //   height: 100,
                          //   thickness: 20,
                          // ),
                        ],
                      ),
                    ],
                  ),
                )),
          ),
        ],
      ),
    );
  }
}

class MostSellingItems extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.vertical,
      children: <Widget>[
        PizzaStrings(
          name: "Alfredo Pizza",
          description: 'Chicken pieces,mushroom and alfreado sauce.',
          imageUrl: "Alfredo_Pizza",
          rating: '4.9',
          price: '3.75JOD',
        ),
        PizzaStrings(
          name: "Caesar Pizza",
          description: 'Salami, pepperoni,mushroom,green pepper,black olives',
          imageUrl: "Caesar_Pizza",
          rating: "4.9",
          price: "3.75JOD",
        ),
        PizzaStrings(
          name: "Chicken Mexican",
          description: 'Onion,jalapeno,corn and chicken breast pieces',
          imageUrl: "Chicken_Mexican_Pizza",
          rating: "4.0",
          price: "3.75JOD",
        ),
        PizzaStrings(
          name: "Chicken",
          description: 'Chicken , onion and special chicken sauce',
          imageUrl: "Chicken_Pizza",
          rating: "4.00",
          price: "3.75JOD",
        ),
        PizzaStrings(
          name: "Chicken Shawarma",
          description: 'Chicken shawarma,onion,tomato and white sauce',
          imageUrl: "Chicken_Shawarma_Pizza",
          rating: "4.00",
          price: "3.75JOD",
        ),
        PizzaStrings(
          name: "Margherita Pizza",
          description: 'Rich tomato sauce with mozzarella cheese.',
          imageUrl: "Margherita_Pizza",
          rating: "4.00",
          price: "3.75JOD",
        ),
        PizzaStrings(
          name: "Meat Pizza",
          description: 'Pure beef,pepperoni and salami slices',
          imageUrl: "Meat_Pizza",
          rating: "4.00",
          price: "3.75JOD",
        ),
        PizzaStrings(
          name: "Smoked Turkey Pizza",
          description:
              'Slices of special marinted smoked turkey and mozzarella cheese',
          imageUrl: "Smoked_Turkey_Pizza",
          rating: "4.00",
          price: "3.75JOD",
        ),
      ],
    );
  }
}
