// import 'dart:nativewrappers/_internal/vm/lib/core_patch.dart';

import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.blue[800],
          title: const Center(
              child: Text(
                'Music timee',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0,
                  color: Colors.black,
                ),
              )
          ),
        ),
        body: const MusicPage(),
      ),
    );
  }
}

class MusicPage extends StatefulWidget {
  const MusicPage({super.key});

  @override
  State<MusicPage> createState() => _MusicPageState();
}

class _MusicPageState extends State<MusicPage> {

  void playMusic(int number) {
    final player = AudioPlayer();
    player.play(AssetSource('note$number.wav'));
  }

  Widget buildButtons({required Color color,required int number}) {
    return Expanded(child: MaterialButton(
      // style: ButtonStyle(
      //   backgroundColor: WidgetStateProperty.all(Colors.red),
      // ),
      color: color,
      onPressed: () {
        playMusic(number);
      },
      child: const Text(
        'hihi',
        style: TextStyle(
          color: Colors.black,
        ),
      ),
    ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          buildButtons(color: Colors.red, number: 1),
          buildButtons(color: Colors.orange, number: 2),
          buildButtons(color: Colors.yellow, number: 3),
          buildButtons(color: Colors.green, number: 4),
          buildButtons(color: Colors.blue, number: 5),
          buildButtons(color: Colors.teal, number: 6),
          buildButtons(color: Colors.purple, number: 7),

        ],
      ),
    );
  }
}