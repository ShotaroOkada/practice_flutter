import 'package:flutter/material.dart';

enum _DialogActionType {
  cancel,
  ok,
}

void addHabitDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) => AlertDialog(
          title: Text("タイトル"),
          content: Text("本文"),
          // ボタンの配置
          actions: <Widget>[
            FlatButton(
                child: const Text('キャンセル'),
                onPressed: () {
                  Navigator.pop(context, _DialogActionType.cancel);
                }),
            FlatButton(
                child: const Text('OK'),
                onPressed: () {
                  Navigator.pop(context, _DialogActionType.ok);
                })
          ],
        ),
  ).then<void>((value) {
    // ボタンタップ時の処理
    switch (value) {
      case _DialogActionType.cancel:
        print("cancel...");
        break;
      case _DialogActionType.ok:
        print("OK!!");
        break;
      default:
        print("default");
    }
  });
}
