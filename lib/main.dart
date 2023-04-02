import 'package:flutter/material.dart';
// import 'package:english_words/english_words.dart';
import 'package:audioplayers/audioplayers.dart';
// import 'package:audioplayers/audio_cache.dart';

// import 'package:assets_audio_player/assets_audio_player.dart';

void main() {
  runApp(const XyloPhone());
}

class XyloPhone extends StatelessWidget {
  const XyloPhone({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              TextButton(
                onPressed: () {
                  final playerAudio = AudioCache();
                  playerAudio.play('note1.wav');
                },
                style: TextButton.styleFrom(backgroundColor: Colors.amber),
                child: Text("1"),
              ),
              TextButton(
                onPressed: () {
                  final playerAudio = AudioCache();
                  playerAudio.play('note2.wav');
                },
                style: TextButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 61, 255, 7)),
                child: Text("2"),
              ),
              TextButton(
                onPressed: () {
                  final playerAudio = AudioCache();
                  playerAudio.play('note3.wav');
                },
                style: TextButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 77, 7, 255)),
                child: Text("3"),
              ),
              TextButton(
                onPressed: () {
                  final player = AudioCache();
                  player.play('note4.wav');
                },
                style: TextButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 180, 72, 14)),
                child: Text("4"),
              ),
              TextButton(
                onPressed: () {
                  final player = AudioCache();
                  player.play('note5.wav');
                },
                style: TextButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 55, 43, 9)),
                child: Text("5"),
              ),
              TextButton(
                onPressed: () {
                  final player = AudioCache();
                  player.play('note6.wav');
                },
                style: TextButton.styleFrom(backgroundColor: Colors.red),
                child: Text("6"),
              ),
              TextButton(
                onPressed: () {
                  final player = AudioCache();
                  player.play('note7.wav');
                },
                style: TextButton.styleFrom(
                    backgroundColor: Color.fromRGBO(255, 0, 247, 1)),
                child: Text("7"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
