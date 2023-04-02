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

  //function for button repet
  Expanded buidkey({required Color color, required int soundNumber}) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          playsound(soundNumber);
        },
        // style: TextButton.styleFrom(backgroundColor: Colors.red),
        child: Text("tone-1"),
      ),
    );
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
              buidkey(color: Colors.red, soundNumber: 8),
              buidkey(color: Colors.yellow, soundNumber: 2),
              buidkey(color: Colors.blue, soundNumber: 3),
              buidkey(color: Colors.green, soundNumber: 4),
              buidkey(color: Colors.purple, soundNumber: 5),
              buidkey(color: Colors.pink, soundNumber: 6),
              buidkey(color: Colors.blueGrey, soundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
