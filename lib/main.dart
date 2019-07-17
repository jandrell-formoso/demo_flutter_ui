import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      title: 'Flutter Demo',
      theme: CupertinoThemeData(),
      home: CupertinoPageScaffold(
        backgroundColor: Colors.white,
        child: Center(
          child: Text("Hello World"),
        ),
      ),
    );
  }
}
