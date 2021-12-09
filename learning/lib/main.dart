// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            flexibleSpace: Image.asset(
              "image/start.jpg",
              fit: BoxFit.cover,
            ),
            bottom: PreferredSize(
                child: Container(), preferredSize: Size.fromHeight(200.0)),
          ),
          body: Container(
            color: Colors.grey[200],
            child: Column(
              children: [Text1(), Text2(), getstart()],
            ),
          ),
        ),
      ),
    );
  }
}

Widget Text1() {
  return Container(
    //color: Colors.blue,
    height: 170.0,
    width: 210,
    padding: EdgeInsets.only(top: 50.0),
    child: Column(
      children: [
        Text(
          "The roots of education are bitter but the fruit is sweet.",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
          ),
        )
      ],
    ),
  );
}

Widget Text2() {
  return Container(
    //color: Colors.pink,
    height: 80.0,
    width: double.infinity,
    padding: EdgeInsets.only(top: 10.0),
    child: Column(
      children: [
        Text(
          "Aristotle",
          style: TextStyle(fontSize: 20.0),
        ),
      ],
    ),
  );
}

Widget getstart() {
  return Container(
    //color: Colors.pink,
    margin: EdgeInsets.only(top: 15.0),
    child: Column(
      children: [
        ElevatedButton(
          style: TextButton.styleFrom(
              primary: Colors.black,
              backgroundColor: Colors.yellowAccent.shade700),
          onPressed: () {},
          child: Container(
            width: 180.0,
            child: Text(
              'Get Start',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: 20.0,
                  fontStyle: FontStyle.italic),
            ),
          ),
        ),
        ElevatedButton(
            style: TextButton.styleFrom(
                primary: Colors.black,
                backgroundColor: Colors.yellowAccent.shade700),
            onPressed: () {},
            child: Container(
              width: 180.0,
              child: Text(
                'Sign Up',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: 20.0,
                    fontStyle: FontStyle.italic),
              ),
            ))
      ],
    ),
  );
}
