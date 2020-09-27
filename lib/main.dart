import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  void playSound(String filename) {
    final player = AudioCache();
    player.play(filename);
  }

  Widget buildKey({String filename, Color color}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(filename);
        },
        child: null,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(filename: 'note1.wav', color: Colors.red),
              buildKey(filename: 'note2.wav', color: Colors.orange),
              buildKey(filename: 'note3.wav', color: Colors.yellow),
              buildKey(filename: 'note4.wav', color: Colors.green),
              buildKey(filename: 'note5.wav', color: Colors.teal),
              buildKey(filename: 'note6.wav', color: Colors.blue),
              buildKey(filename: 'note7.wav', color: Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}