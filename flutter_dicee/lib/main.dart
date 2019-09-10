import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Dicee"),
          backgroundColor: Colors.red,
        ),
        body: DiceePage(),
        backgroundColor: Colors.red,
      ),
    );
  }
}

class DiceePage extends StatefulWidget {
  @override
  _DiceePageState createState() => _DiceePageState();
}

class _DiceePageState extends State<DiceePage> {
  int leftDiceNUmber = 5;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: FlatButton(
              onPressed: () {
                print("Left button had been click.");
                setState(() {
                  leftDiceNUmber = Random().nextInt(5) + 1;
                });
              },
              child: Image.asset("images/dice$leftDiceNUmber.png"),
            ),
          ),
          Expanded(
            flex: 1,
            child: FlatButton(
              child: Image(
                image: AssetImage("images/dice1.png"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
