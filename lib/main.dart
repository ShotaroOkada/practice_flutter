import 'package:flutter/material.dart';
import 'package:first_flutter/Home.dart';
import 'package:first_flutter/KeyWord.dart';
import 'package:first_flutter/Notification.dart';
import 'package:first_flutter/Message.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.white,
        accentColor: Colors.blue,
        ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int currentIndex = 0;

  List tabItemWidget = [
    Home(),
    KeyWord(),
    Notifications(),
    Message(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ホーム"),
      ),
      body: Center(
        child: tabItemWidget[currentIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        onTap: _onTaped,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.blue,),
            title: Text(''),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search, color: Colors.blue,),
            title: Text(''),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications, color: Colors.blue,),
            title: Text(''),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.mail, color: Colors.blue,),
            title: Text(''),
          ),
        ],
      ),
    );
  }

  _onTaped(int index) {
    setState(() {
     currentIndex = index; 
    });
  }
}
