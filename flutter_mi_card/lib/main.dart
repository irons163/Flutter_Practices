import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Text("AAA"),
          backgroundColor: Colors.red,
        ),
        body: SafeArea(
          child: Container(
            height: 100,
            width: 100,
            color: Colors.white,
            margin: EdgeInsets.only(top: 30),
            padding: EdgeInsets.all(10),
            child: Text("title"),
          ),
        ),
      ),
    );
  }
}
