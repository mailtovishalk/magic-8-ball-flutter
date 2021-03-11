import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(Ballpage());

class Ballpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.blue.shade900,
      appBar: AppBar(
        title: Center(child: Text('Ask me anything')),
        backgroundColor: Colors.blue,
      ),
      body: Ball(),
    ));
  }
}

class Ball extends StatefulWidget {
  @override
  _ballState createState() => _ballState();
}

// ignore: camel_case_types
class _ballState extends State<Ball> {
  int index = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: FlatButton(
        onPressed: () {
          setState(() {
            index = Random().nextInt(4) + 1;
          });
        },
        child: Center(
          child: Image.asset('images/ball$index.png'),
        ),
      ),
    );
  }
}
