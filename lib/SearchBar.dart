import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 10, top: 5, right: 10, bottom: 5),
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(30.0)),
            borderSide: BorderSide(
              width: 0,
              color: Color(0xff7d0303),
              style: BorderStyle.none,
            ),
          ),
          filled: true,
          prefixIcon: Icon(
            Icons.search,
            color: Color(0xff7d0303),
          ),
          fillColor: Color(0xFFFAFAFA),
          hintStyle: new TextStyle(color: Color(0xffd0cece), fontSize: 19),
          hintText: "search for your favourite .... ",
        ),
      ),
    );
  }
}
