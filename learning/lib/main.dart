// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_import

import 'dart:ui';

import 'package:flutter/material.dart';
import 'Screens/homePage.dart';
import 'Screens/LoginPage.dart';
import 'Screens/RegPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),


      routes: <String,WidgetBuilder>{
        '/login':(context)=>LoginPage(),
        '/reg':(context)=>regPage(),
        '/home':(context)=>HomePage(),

      },
    );
  }
}

