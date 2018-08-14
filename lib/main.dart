import 'package:flutter/material.dart';
import './topic.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'CNode',
        theme: ThemeData(
            primaryColor: Colors.grey[900],
            accentColor: Colors.lightGreenAccent[400],
            primaryTextTheme: TextTheme(body1: TextStyle(color: Colors.black))),
        home: Topic());
  }
}
