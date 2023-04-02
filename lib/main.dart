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

//function for sound in button int soundNumber banayvu anf string interpolation kayru arg pass kayru function ma
  void playsound(int soundNumber) {
    final playerAudio = AudioCache();
    playerAudio.play('note$soundNumber.wav');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: TextButton(
                  onPressed: () {
                    playsound(1);
                  },
                  style: TextButton.styleFrom(backgroundColor: Colors.red),
                  child: Text("tone-1"),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    playsound(2);
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 61, 255, 7),
                  ),
                  child: Text("tone-2"),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    playsound(3);
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 77, 7, 255),
                  ),
                  child: Text("tone-3"),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    playsound(4);
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 180, 72, 14),
                  ),
                  child: Text("tone-4"),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    playsound(5);
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 33, 237, 101),
                  ),
                  child: Text("tone-5"),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    playsound(6);
                  },
                  style: TextButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 74, 31, 182)),
                  child: Text("tone-6"),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    playsound(7);
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: Color.fromRGBO(255, 0, 247, 1),
                  ),
                  child: Text("tone-7"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
