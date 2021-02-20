import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(XyloApp());
}

class XyloApp extends StatelessWidget {
  void playMe(int no) {
    final player = AudioCache();
    player.play('note$no.wav');
  }

  Expanded getKeys(int music, Color color) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playMe(music);
        },
        child: null,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            getKeys(1, Colors.red),
            getKeys(2, Colors.green),
            getKeys(3, Colors.yellow),
            getKeys(4, Colors.pink),
            getKeys(5, Colors.blue),
            getKeys(6, Colors.teal),
            getKeys(7, Colors.yellow),
          ],
        )),
      ),
    );
  }
}
