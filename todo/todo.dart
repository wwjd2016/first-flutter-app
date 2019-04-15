import 'package:flutter/material.dart';

class MyTodoPage extends StatefulWidget {
  @override
  _MyTodoPageState createState() => new _MyTodoPageState();
}

class _MyTodoPageState extends State<MyTodoPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Center(child: Text('this is todo list page'),)
    );
  }
}