import 'package:flutter/material.dart';

Widget buttonArea() {
  return Container(
      margin: const EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
      child: Row( // 1行目
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          _buildButtonColumn(Icons.call, "CALL"), // 2.1
          _buildButtonColumn(Icons.near_me, "ROUTE"), // 2.2
          _buildButtonColumn(Icons.share, "SHARE") // 2.3
        ],
      ));
}
 
Widget _buildButtonColumn(IconData icon, String label) {
  final color = Colors.blue;
  return Column(
    mainAxisSize: MainAxisSize.min,
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Icon(icon, color: color), // 3.1.1
      Container( // 3.1.2
        margin: const EdgeInsets.only(top: 8.0),
        child: Text(
          label,
          style: TextStyle(
              fontSize: 12.0,
              fontWeight: FontWeight.w400,
              color: color),
        ),
      )
    ],
  );
}