import 'package:audioplayers/audioplayers.dart';
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
        backgroundColor: Colors.black,
        body: const XyloPhone(),
        appBar: AppBar(
          title: const Text("XyloPhone"),
          backgroundColor: Colors.black,
        ),
      ),
    );
  }
}

class XyloPhone extends StatelessWidget {
  const XyloPhone({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
              child: TextButton(
            onPressed: () {
              final player = AudioPlayer();
              player.play(AssetSource('assets_note1.wav'));
            },
            child: Container(
              color: Colors.red,
            ),
          )),
          Expanded(
              child: TextButton(
            onPressed: () {
              final player = AudioPlayer();
              player.play(AssetSource('assets_note2.wav'));
            },
            child: Container(
              color: Colors.orange,
            ),
          )),
          Expanded(
              child: TextButton(
            onPressed: () {
              final player = AudioPlayer();
              player.play(AssetSource('assets_note3.wav'));
            },
            child: Container(
              color: Colors.yellow,
            ),
          )),
          Expanded(
              child: TextButton(
            onPressed: () {
              final player = AudioPlayer();
              player.play(AssetSource('assets_note4.wav'));
            },
            child: Container(
              color: Colors.green,
            ),
          )),
          Expanded(
              child: TextButton(
            onPressed: () {
              final player = AudioPlayer();
              player.play(AssetSource('assets_note5.wav'));
            },
            child: Container(
              color: Colors.lightGreen,
            ),
          )),
          Expanded(
              child: TextButton(
            onPressed: () {
              final player = AudioPlayer();
              player.play(AssetSource('assets_note6.wav'));
            },
            child: Container(
              color: Colors.blue,
            ),
          )),
          Expanded(
              child: TextButton(
            onPressed: () {
              final player = AudioPlayer();
              player.play(AssetSource('assets_note7.wav'));
            },
            child: Container(
              color: Colors.purple,
            ),
          ))
        ],
      ),
    );
  }
}
