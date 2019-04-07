import 'package:flutter/material.dart';

class Notifications extends StatefulWidget {
  @override
  _NotificationsState createState() => new _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
            children: List.generate(10, (index) {
      return Container(
        margin: EdgeInsets.only(left: 20.0, top: 10.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Icon(
              Icons.favorite,
              color: Colors.red,
              size: 30.0,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                    width: 40.0,
                    height: 40.0,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("assets/icon$index.jpg")))),
                Row(
                  children: <Widget>[
                    Text("Index $index さん", style: TextStyle(fontWeight: FontWeight.bold),),
                    Text("があなたのツイートにいいねしました")
                  ],
                ),
                SizedBox(height: 5.0,),
                Text("Google I/O last month was something of\na celebration for the Flutter\nteam: having reached beta, it was good\nto meet with many\ndevelopers who are learning, prototyping,\nor building with Flutter.\nThrough the various technical sessions")
              ],
            )
          ],
        ),
      );
    })));
  }
}
