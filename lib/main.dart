import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yotsuba/screens/home_screen.dart';

void main() => runApp(const Yotsuba());

class Yotsuba extends StatelessWidget {
  const Yotsuba({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen(),
    );
  }
}
