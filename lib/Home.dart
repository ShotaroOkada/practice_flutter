import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => new _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(
            children: List.generate(10, (index) {
          return InkWell(
            onTap: () {},
            child: Column(
              children: <Widget>[
                ListTile(
                  title: Row(
                    children: <Widget>[
                      Text("Index ユーザー $index"),
                      SizedBox(
                        width: 70.0,
                      ),
                      Text(
                        "8時間前",
                        style: TextStyle(fontSize: 13.0, color: Colors.grey),
                      )
                    ],
                  ),
                  leading: Image.asset(
                    "assets/icon$index.jpg",
                    width: 30.0,
                    height: 30.0,
                  ),
                  subtitle: Container(
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 5.0,
                        ),
                        Text("こんにちはTwitterへ！！\nこちらはTwitterのクローンを作成しています"),
                        SizedBox(
                          height: 5.0,
                        ),
                        Row(
                          children: <Widget>[
                            Icon(
                              Icons.comment,
                              size: 15.0,
                              color: Colors.grey, 
                            ),
                            Text(index.toString()),
                            SizedBox(
                              width: 30.0,
                            ),
                            Icon(
                              Icons.repeat,
                              size: 15.0,
                              color: Colors.grey,
                            ),
                            Text(index.toString()),
                            SizedBox(
                              width: 30.0,
                            ),
                            Icon(
                              Icons.favorite,
                              size: 15.0,
                              color: Colors.grey,
                            ),
                            Text(index.toString()),
                            SizedBox(
                              width: 30.0,
                            ),
                            Icon(
                              Icons.share,
                              size: 15.0,
                              color: Colors.grey,
                            ),
                            Text(index.toString()),
                            SizedBox(
                              width: 30.0,
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Divider(
                  height: 5.0,
                ),
              ],
            ),
          );
        })),
      ),
    );
  }
}