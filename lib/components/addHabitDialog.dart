import 'package:flutter/material.dart';

enum _DialogActionType {
  cancel,
  ok,
}

void addHabitDialog(BuildContext context) {
  final myController = TextEditingController();
  showDialog(
    context: context,
    builder: (BuildContext context) => AlertDialog(
          title: Text("習慣を作成"),
          content: TextField(
            controller: myController,
            decoration: InputDecoration(
                hintText: "名前",
            ),
          ),
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
        print(myController.text);
        break;
      case _DialogActionType.ok:
        print("OK!!");
        print(myController.text);
        break;
      default:
        print("default");
    }
  });
}
