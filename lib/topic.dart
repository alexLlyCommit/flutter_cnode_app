import 'package:flutter/material.dart';
import './utils/http.dart';
import 'dart:async';

class Topic extends StatefulWidget {
  @override
  TopicState createState() => TopicState();
}

class TopicState extends State<Topic> {
  List data = [];

  @override
  void initState() {
    super.initState();
    getTopics().then((res) {
      setState(() {
        data = res.length > 0 ? res.sublist(0, 10) : [];
      });
    });
  }

  Future<List> getTopics() async {
    return await get('topics');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('主题'),
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
      body: Container(
        child: Column(
          children: <Widget>[
            Flexible(
              child: ListView.builder(
                padding: new EdgeInsets.all(8.0),
                // reverse: true,
                itemBuilder: (_, int index) => Text('${data[index]['title']}',
                    style: TextStyle(color: Colors.orange)),
                itemCount: data.length,
              ),
            )
          ],
        ),
      ),
    );
  }
}
