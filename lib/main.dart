import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yotsuba/screens/home_screen.dart';

void main() => runApp(const Yotsuba());

class Yotsuba extends StatelessWidget {
  const Yotsuba({Key? key}) : super(key: key);

  // void playSound() {
  //   final player = AudioCache();
  //   player.play('note4.mp3');
  // }

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen(),
    );
  }
}
