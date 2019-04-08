import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:first_flutter/components/titleArea.dart';
import 'package:first_flutter/components/buttonArea.dart';
import 'package:first_flutter/components/descriptionArea.dart';


void main() {
  debugPaintSizeEnabled=true;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Card Layout"),
        ),
        body: Card(
          elevation: 4.0,
          margin: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                'images/icon.jpg',
                height: 150,
                ),
              titleArea(),
              buttonArea(),
              descriptionArea()
            ],
          ),
        )
    );
  }
}
