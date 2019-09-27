import 'package:flutter/material.dart';
import 'itemList.dart';
void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: new ThemeData(
        primaryColor: Colors.amber
      ),
      home: new itemList(),
    );
  }
}