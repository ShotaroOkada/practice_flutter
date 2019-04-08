import 'package:flutter/material.dart';

Widget titleArea() {
  return Container(
    margin: EdgeInsets.all(16.0),
    child: Row(    // 1行目
      children: <Widget>[
        Expanded(  // 2.1列目
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(  // 3.1.1行目
                margin: const EdgeInsets.only(bottom: 4.0),
                child: Text(
                  "Neko is So cute.",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 16.0),
                ),
              ),
              Container(  // 3.1.2行目
                child: Text(
                  "Osaka, Japan",
                  style: TextStyle(fontSize: 12.0, color: Colors.grey),
                ),
              ),
            ],
          ),
        ),
        Icon(  // 2.2列目
          Icons.star,
          color: Colors.red,
        ),
        Text('41'),  // 2.3列目
      ],
    )
  );
}