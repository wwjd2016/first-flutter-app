import 'package:flutter/material.dart';
import 'home/home.dart';
import 'todo/todo.dart';
import 'fitness/fitness.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'I do',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyLayout()
    );
  }
}

class MyLayout extends StatefulWidget {
  @override
  _MyLayoutState createState() => new _MyLayoutState();
}

class _MyLayoutState extends State<MyLayout> {
  int _currentSelect = 0;
  final List<Widget> _child = [
    MyHomePage(),
    MyTodoPage(),
    FitPage()
  ];
  final List<String> _titles = ["I do", "Todo List", "I do"];

  void onSetting() {}
  void _onItemTap(int index) {
    print(index);
    setState(() {
      _currentSelect = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: new AppBar(
        title: new Text(_titles[_currentSelect]),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: onSetting,
          )
        ],
      ),
      body: _child[_currentSelect],
      bottomNavigationBar: BottomNavigationBar(items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('Home'),),
        BottomNavigationBarItem(
            icon: Icon(Icons.business), title: Text('Todo')),
        BottomNavigationBarItem(icon: Icon(Icons.face), title: Text('Fitness'))
      ],
        onTap: _onItemTap,
        currentIndex: _currentSelect,
      ),
    );
  }
}