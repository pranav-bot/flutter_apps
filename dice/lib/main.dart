import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.red,
          appBar: AppBar(
            title: const Text("Dice"),
            backgroundColor: Colors.red,
          ),
          body: DicePage()),
    );
  }
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  var numLeft = 1;
  var numRight = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextButton(
              onPressed: () {
                setState(() {
                  numLeft = Random().nextInt(6) + 1;
                  numRight = Random().nextInt(6) + 1;
                });
              },
              child: Image(
                image: AssetImage('images/dice$numLeft.png'),
                width: 200,
              ),
            ),
          )),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextButton(
              onPressed: () {
                setState(() {
                  numRight = Random().nextInt(6) + 1;
                  numLeft = Random().nextInt(6) + 1;
                });
              },
              child: Image(
                image: AssetImage('images/dice$numRight.png'),
                width: 200,
              ),
            ),
          ))
        ],
      ),
    );
  }
}
