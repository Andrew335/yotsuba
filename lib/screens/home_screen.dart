import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

bool isPlaying = false;

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  void playSound(String audiofile) {
    final cache = AudioCache();
    final player = AudioPlayer();
    if (isPlaying == false) {
      cache.play('audiofile');
      isPlaying = true;
      print(isPlaying);
      print(cache);
    } else {
      player.stop();
      cache.clearAll();
      isPlaying = false;
      print(isPlaying);
      print(cache.toString());
    }
  }

  // AudioCache cache = AudioCache(); // you have this
  // AudioPlayer player = AudioPlayer(); // create this
  //
  // void _playFile(String soundFile) async {
  //   player = await cache.play(soundFile); // assign player here
  // }
  //
  // void _stopFile() {
  //   player?.stop(); // stop the file like this
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'よつばと!',
            style: TextStyle(
              fontFamily: 'NotoSansJP-Medium',
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        backgroundColor: const Color(0xFF09A33E),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: const DecorationImage(
            image: AssetImage('images/homescreen_background.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 2,
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: FloatingActionButton(
                      onPressed: () {
                        print('poops!');
                        playSound('note4.wav');
                      },
                      child: Image.asset('images/poop.jpg'),
                    ),
                  ),
                  Expanded(
                    child: FloatingActionButton(
                      onPressed: () {
                        print('sleepy');
                        playSound('lullaby.mp3');
                      },
                      child: Image.asset('images/sleep.jpg'),
                    ),
                  ),
                  Expanded(
                    child: FloatingActionButton(
                      onPressed: () {
                        print('hungry');
                      },
                      child: Image.asset('images/bottle.jpg'),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 5,
              child: Container(),
            ),
          ],
        ),
      ),
    );
  }
}
