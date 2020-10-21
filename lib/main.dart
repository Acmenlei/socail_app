import 'package:YourName/src/components/views/Chat/chat.dart';
import 'package:YourName/src/components/views/Index/index.dart';
import 'package:YourName/src/components/views/Profile/profile.dart';
import 'package:YourName/src/components/views/Square/square.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '你の名字',
      theme: ThemeData( primaryColor: Colors.blueAccent),
      home: MyHomePage(title: '首页',),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;
  MyHomePage({Key key, this.title}) : super(key: key);
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int index) {
          this.setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem( icon: Icon(Icons.circle), title: Text("星球")),
          BottomNavigationBarItem( icon: Icon(Icons.square_foot), title: Text("广场")),
          BottomNavigationBarItem( icon: Icon(Icons.chat), title: Text("聊天")),
          BottomNavigationBarItem( icon: Icon(Icons.account_circle_sharp), title: Text("我的")),
        ],
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
      ),
      body: IndexedStack(
        index: _currentIndex,
        children: [
          Index(),
          Square(),
          Chat(),
          Profile()
        ],
      )
    );
  }
}
