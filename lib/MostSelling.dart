import 'package:flutter/material.dart';
import 'main.dart';

class BeforeMostSelling extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            "Most Selling",
            style: TextStyle(
                fontSize: 20,
                color: Color(0xFF3a3a3b),
                fontWeight: FontWeight.w300),
          ),
          Container(
            child: Column(
              children: [
                Text(
                  "See more",
                  style: TextStyle(
                    fontSize: 14,
                    color: Color(0xff427adc),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class MostSellingWidget extends StatefulWidget {
  const MostSellingWidget({Key key}) : super(key: key);

  @override
  _MostSellingWidgetState createState() => _MostSellingWidgetState();
}

class _MostSellingWidgetState extends State<MostSellingWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 270,
      width: double.infinity,
      child: Column(
        children: <Widget>[
          BeforeMostSelling(),
          Expanded(
            child: MostSellingItems(),
          )
        ],
      ),
    );
  }
}

class MostSellingStrings extends StatelessWidget {
  String name;
  String imageUrl;
  String rating;
  String price;

  MostSellingStrings({
    Key key,
    @required this.name,
    @required this.imageUrl,
    @required this.rating,
    @required this.price,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      // onTap: () {
      //   // Navigator.push(context, ScaleRoute(page: FoodDetailsPage()));
      // },
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left: 10, right: 5, top: 5, bottom: 5),
            child: Card(
                color: Colors.white,
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(5.0),
                  ),
                ),
                child: Container(
                  width: 170,
                  height: 210,
                  child: Column(
                    children: <Widget>[
                      Stack(
                        children: <Widget>[
                          Align(
                            child: Center(
                              child: Image.asset(
                                'images/' + imageUrl + ".webp",
                                width: 100,
                                height: 90,
                              ),
                            ),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            alignment: Alignment.bottomLeft,
                            padding: EdgeInsets.only(left: 5, top: 5),
                            child: Text(name,
                                style: TextStyle(
                                    color: Color(0xFF6e6e71),
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500)),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Container(
                                alignment: Alignment.topLeft,
                                padding: EdgeInsets.only(left: 5, top: 5),
                                child: Text(rating,
                                    style: TextStyle(
                                        color: Color(0xFF6e6e71),
                                        fontSize: 10,
                                        fontWeight: FontWeight.w400)),
                              ),
                              Container(
                                padding: EdgeInsets.only(top: 3, left: 5),
                                child: Row(
                                  children: <Widget>[
                                    Icon(
                                      Icons.star,
                                      size: 10,
                                      color: Color(0xff000000),
                                    ),
                                    Icon(
                                      Icons.star,
                                      size: 10,
                                      //0xFFfb3132
                                      color: Color(0xff000000),
                                    ),
                                    Icon(
                                      Icons.star,
                                      size: 10,
                                      color: Color(0xff000000),
                                    ),
                                    Icon(
                                      Icons.star,
                                      size: 10,
                                      color: Color(0xff000000),
                                    ),
                                    Icon(
                                      Icons.star,
                                      size: 10,
                                      color: Color(0xFF9b9b9c),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Container(
                            alignment: Alignment.bottomLeft,
                            padding: EdgeInsets.only(left: 5, top: 5, right: 5),
                            child: Text(price,
                                style: TextStyle(
                                    color: Color(0xFF6e6e71),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600)),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 32,
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: FlatButton(
                                color: Color(0xff800808),
                                onPressed: () {},
                                child: Text(
                                  'Add to cart',
                                  style: TextStyle(color: Colors.white),
                                )),
                          )
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
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        MostSellingStrings(
          name: "Alfredo ",
          imageUrl: "Alfredo_Pizza",
          rating: '4.9',
          price: '3.75JOD',
        ),
        MostSellingStrings(
          name: "Mixed Vegetable",
          imageUrl: "Caesar_Pizza",
          rating: "4.9",
          price: "3.75JOD",
        ),
        MostSellingStrings(
          name: "Chicken Mexican",
          imageUrl: "Chicken_Mexican_Pizza",
          rating: "4.0",
          price: "3.75JOD",
        ),
        MostSellingStrings(
          name: "Chicken",
          imageUrl: "Chicken_Pizza",
          rating: "4.00",
          price: "3.75JOD",
        ),
      ],
    );
  }
}
