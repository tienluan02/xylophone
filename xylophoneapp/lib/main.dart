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
        backgroundColor: Colors.green,
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
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Row(
              children: [
                Expanded(child: TextButton(
                  onPressed: () {
                    final player = AudioPlayer();
                    player.play(AssetSource('rclick-13693.mp3'));
                  },
                  child: Text(
                    'hihi',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
                ),
              ]
          ),
          Expanded(child: TextButton(
            onPressed: () {},
            child: Text(
              'hihi',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
          ),
          Expanded(child: TextButton(
            onPressed: () {},
            child: Text(
              'hihi',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
          ),
        ],
      ),
    );
  }
}