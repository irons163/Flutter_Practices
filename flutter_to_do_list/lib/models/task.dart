import 'package:flutter/material.dart';

class Task {
  var name;
  var done;

  Task({this.name, this.done = false});

  void toggleDone() {
    this.done = !this.done;
  }
}
