import 'package:flutter/material.dart';
import 'random.dart';
void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Welcome Flutter',
      home: new Scaffold(
        body: new RandomWords(),
      ),
    );
  }
}