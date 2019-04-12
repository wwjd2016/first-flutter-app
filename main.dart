import 'package:flutter/material.dart';

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
      home: MyHomePage(title: 'I DO'),
    );
  }
}

class MyHomePage extends StatefulWidget {

  MyHomePage({Key key, this.title}) : super(key:key);

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  void onSetting() {
    // TODO 打开设置页面
  }

  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.settings), onPressed: onSetting,)
        ],
      ),
      body: Column(
        children: <Widget>[
          Row(
            children: <Widget>[ReadCard()],
          ),
          Row(
            children: <Widget>[InforCard()],
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('Home')),
        BottomNavigationBarItem(icon: Icon(Icons.business), title: Text('Todo')),
        BottomNavigationBarItem(icon: Icon(Icons.face), title: Text('Fitness'))
      ]),
    );
  }

}

class InforCard extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new Text('abc');
  }

}

class ReadCard extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: new Text('The fear of the Lord is the beginning of wisdom.\n --《Holy bible》'),
      padding: EdgeInsets.all(20.0),
    );
  }
}