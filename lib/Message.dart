import 'package:flutter/material.dart';

class Message extends StatefulWidget {
  @override
  _MessageState createState() => new _MessageState();
}

class _MessageState extends State<Message> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: List.generate(10, (index) {
          return Container(
            margin: EdgeInsets.all(10.0),
            child: ListTile(
              leading: Image.asset(
                "assets/icon$index.jpg",
                width: 50.0,
                height: 50.0,
              ),
              title: Row(
                children: <Widget>[
                  Text("Index $index さん"),
                  SizedBox(
                    width: 5.0,
                  ),
                  Text("@Index_$index"),
                  SizedBox(
                    width: 5.0,
                  ),
                  Text("$index時間前"),
                ],
              ),
              subtitle: Text("ダイレクトメッセージを送信しています\n確認ご返事をしてください"),
            ),
          );
        }),
      ),
    );
  }
}