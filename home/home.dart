import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[ReadCard()],
        ),
        Row(
          children: <Widget>[InforCard()],
        )
      ],
    );
  }
}


class InforCard extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Text('read');
  }
}

class ReadCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: new Text(
          'The fear of the Lord is the beginning of wisdom.\n --《Holy bible》'),
      padding: EdgeInsets.all(20.0),
    );
  }
}