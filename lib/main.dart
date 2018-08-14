import 'package:flutter/material.dart';

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
        home: Newest());
  }
}

class Newest extends StatefulWidget {
  @override
  NewestState createState() => NewestState();
}

class NewestState extends State<Newest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('最新'),
          centerTitle: true,
          iconTheme: IconThemeData(color: Colors.white),
          leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () => {},
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.edit),
              onPressed: () => {},
            )
          ]),
    );
  }
}
