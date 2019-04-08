import 'package:flutter/material.dart';

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