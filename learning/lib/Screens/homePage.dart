// ignore_for_file: unused_import, file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables, duplicate_ignore, non_constant_identifier_names, sized_box_for_whitespace, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'LoginPage.dart';
import 'RegPage.dart';

class HomePage extends StatelessWidget {
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
          body: SingleChildScrollView(
            child: Container(
              color: Colors.grey[200],
             
              width: double.infinity,
              child: Column(
                children: [
                  Text1(),
                  Text2(),
                  getstart(context),
                ],
              ),
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
    height: 190.0,
    width: 210,
    margin: EdgeInsets.only(top: 30.0),
    padding: EdgeInsets.only(top: 30.0),
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
    padding: EdgeInsets.only(top: 15.0),
    margin: EdgeInsets.only(bottom: 70.0),
    child: Column(
      children: [
        Text(
          "-Aristotle-",
          style: TextStyle(fontSize: 20.0),
        ),
      ],
    ),
  );
}

Widget getstart(context) {
  return Container(
    //color: Colors.pink,
    margin: EdgeInsets.only(top: 20.0,bottom: 69.0),
    child: Column(
      children: [
        ElevatedButton(
          style: TextButton.styleFrom(
              primary: Colors.black,
              backgroundColor: Colors.yellowAccent.shade700),
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (_) {
              return LoginPage();
            }));
          },
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
            onPressed: () {
              Navigator.of(context).pushNamed('/reg');
            },
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
