import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChatList extends StatelessWidget {
  const ChatList({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showCupertinoDialog(
            context: context,
            builder: (context) {
              return CupertinoAlertDialog(
                title: Text("Hello"),
                actions: <Widget>[
                  CupertinoDialogAction(
                    child: Text("OK"),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ],
              );
            });
      },
      child: Container(
        child: Column(
          children: <Widget>[
            Row(
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                SizedBox(
                  width: 20,
                ),
                CircleAvatar(
                  backgroundColor: CupertinoColors.inactiveGray,
                ),
                SizedBox(
                  width: 20,
                ),
                Text("Mary"),
                Spacer(
                  flex: 1,
                ),
              ],
            ),
            Divider()
          ],
        ),
      ),
    );
  }
}
