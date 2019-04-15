import 'package:flutter/material.dart';

class FitPage extends StatefulWidget {
  @override
  _FitPageState createState() => new _FitPageState();
}

class _FitPageState extends State<FitPage> {
  int couter = 0;
  @override
  Widget build(BuildContext context) {
    print('i have excut');
    return Container(
        child: Row(
          children: <Widget>[
            Text(couter.toString()),
            RaisedButton(
              child: Text('click me'),
              onPressed: () {
                setState(() {
                  couter ++;
                });
              },
            )
          ],
        )
    );
  }
}