import 'package:flutter/material.dart';

enum _DialogActionType {
  cancel,
  ok,
}

class AddHabit extends StatefulWidget {
  @override
  _AddHabitState createState() => _AddHabitState();
}


class _AddHabitState extends State<AddHabit> {
  final myController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.add),
      onPressed: () {
     showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("タイトル"),
                      content: TextField(
            controller: myController,
            decoration: InputDecoration(
                hintText: "名前",
            ),
          ),
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
          );
        }
    ).then<void>((dynamic value) {
      // ボタンタップ時の処理
      switch (value) {
        case _DialogActionType.cancel:
          print("cancel");
          print(myController.text);
          break;
        case _DialogActionType.ok:
          print("OK");
          break;
        default:
          print("default");
      }
    });
      });
  }
}
