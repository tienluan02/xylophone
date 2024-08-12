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
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
                Expanded(child: MaterialButton(
                  // style: ButtonStyle(
                  //   backgroundColor: WidgetStateProperty.all(Colors.red),
                  // ),
                  color: Colors.red,
                  onPressed: () {
                    playMusic(1);
                  },
                  child: const Text(
                    'hihi',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
                ),
          Expanded(child: MaterialButton(
    //         style: ButtonStyle(
    //           backgroundColor: WidgetStateProperty.all(Colors.orange),
    // ),
            color: Colors.orange,
            onPressed: () {
              playMusic(2);
            },
            child: const Text(
              'hihi',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
          ),
          Expanded(child: MaterialButton(
            // style: ButtonStyle(
            //   backgroundColor: WidgetStateProperty.all(Colors.yellow),
            // ),
            color: Colors.yellow,
            onPressed: () {
              playMusic(3);
            },
            child: const Text(
              'hihi',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
          ),
          Expanded(child: MaterialButton(
            // style: ButtonStyle(
            //   backgroundColor: WidgetStateProperty.all(Colors.green),
            // ),
            color: Colors.green,
            onPressed: () {
              playMusic(4);
            },
            child: const Text(
              'hihi',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
          ),
          Expanded(child: MaterialButton(
            // style: ButtonStyle(
            //   backgroundColor: WidgetStateProperty.all(Colors.blue),
            // ),
            color: Colors.blue,
            onPressed: () {
              playMusic(5);
            },
            child: const Text(
              'hihi',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
          ),
          Expanded(child: MaterialButton(
            // style: ButtonStyle(
            //   backgroundColor: WidgetStateProperty.all(Colors.teal),
            // ),
            color: Colors.teal,
            onPressed: () {
              playMusic(6);
            },
            child: const Text(
              'hihi',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
          ),
          Expanded(child: MaterialButton(
            // style: ButtonStyle(
            //   backgroundColor: WidgetStateProperty.all(Colors.purple),
            // ),
            color: Colors.purple,
            onPressed: () {
              playMusic(7);
            },
            child: const Text(
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