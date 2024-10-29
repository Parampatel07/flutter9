import 'dart:math';

import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

void main() {
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatelessWidget {
  final audio = AudioPlayer();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Example of button",
      home:Scaffold(
        appBar: AppBar(
          title: Text("Example of icon button"),
          backgroundColor: Colors.blue,
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(onPressed: () async {
              await audio.setUrl("assets/myaudio.wav");
              audio.play();
              print("Volume up");
            }, icon: Icon(Icons.volume_up)),
            IconButton(onPressed: (){
              audio.stop();
              print("Volume down");
            }, icon: Icon(Icons.volume_down))
          ],
        ),
      ),
    );
  }
}

