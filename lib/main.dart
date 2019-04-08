import 'package:flutter/material.dart';

void main() => runApp(MyApp());

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
          title: Text("Material App"),
        ),
        body: ListView(
            children: List.generate(5, (index) {
          return InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => MyHomePageDetail("images/screen$index.jpg")));
            },
            child: Card(
              child: Column(
                children: <Widget>[
                  Image.asset("images/screen$index.jpg"),
                  Container(
                      margin: EdgeInsets.all(10.0),
                      child: ListTile(
                        title: Text("images/screen$index.jpg"),
                        leading: Icon(Icons.person),
                        subtitle: Text("サブタイトル"),
                      )),
                ],
              ),
            ),
          );
        })));
  }
}


class MyHomePageDetail extends StatefulWidget {

  String _imageName;
  
  MyHomePageDetail(String imageName){
    this._imageName = imageName;
  }
  
  @override
  _MyHomePageDetailState createState() => new _MyHomePageDetailState();
}

class _MyHomePageDetailState extends State<MyHomePageDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Material App"),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Image.asset(widget._imageName),
              Container(
                child: ListTile(
                  title: Text(widget._imageName),
                  leading: Icon(Icons.person),
                  subtitle: Text("お写真ですこれは"),
                ),
              )
            ],
          ),
        ));
  }
}