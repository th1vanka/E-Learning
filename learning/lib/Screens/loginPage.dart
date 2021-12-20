// ignore_for_file: file_names, prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, unnecessary_this, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'HomePage.dart';

class LoginPage extends StatelessWidget {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back_rounded),
            onPressed: () {
              Navigator.pop(context, HomePage());
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
        body: SingleChildScrollView(
          child: Container(
            height: 517.0,
            color: Colors.grey[200],
            width: double.infinity,
            child: Column(
              children: <Widget>[
                Container(
                  width: 290.0,
                  margin: EdgeInsets.only(top: 120.0),
                  child: TextFormField(
                    key: _formKey,
                    decoration: const InputDecoration(
                      hintText: "Email Address",
                      prefixIcon: Icon(Icons.person),
                    ),
                    validator: (txt) {
                      if (txt!.isEmpty) {
                        return "This field cannot be empty";
                      }
                      return null;
                    },
                    
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 30.0),
                  width: 290.0,
                  child: TextFormField(
                    obscureText: true,
                    decoration: const InputDecoration(
                      hintText: "Password",
                      prefixIcon: Icon(Icons.password),
                    ),
                    onChanged: (text) {
                      print(text);
                    },
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 90.0),
                  child: ElevatedButton(
                    style: TextButton.styleFrom(
                        primary: Colors.black,
                        backgroundColor: Colors.yellowAccent.shade700),
                    onPressed: () {
                      //_formKey.currentState!.validate();
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
                ),
                Center(
                  child: Container(
                    margin: EdgeInsets.only(top: 10.0),
                    child: Text(
                      "I forgot my password",
                      style: TextStyle(color: Colors.blueAccent[700]),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
