// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, file_names, camel_case_types
import 'HomePage.dart';
import 'package:flutter/material.dart';

class regPage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back_rounded),
            onPressed: () {
             Navigator.pop(context,HomePage());
            },
            color: Colors.black,
          ),
          flexibleSpace: Image.asset(
            "image/start.jpg",
            fit: BoxFit.cover,
          ),
          bottom: PreferredSize(
              child: Container(), preferredSize: Size.fromHeight(200.0)),
        ),
      ),
    );
  }
}
