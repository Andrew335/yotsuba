import 'package:audioplayers/web/audioplayers_web.dart';
import 'package:flutter/cupertino.dart';
import 'package:audioplayers/audioplayers.dart';

class AudioPlayerLocal extends StatefulWidget {
  const AudioPlayerLocal({Key? key}) : super(key: key);

  @override
  State<AudioPlayerLocal> createState() => _AudioPlayerLocalState();
}

class _AudioPlayerLocalState extends State<AudioPlayerLocal> {
  AudioPlayer audioPlayer = AudioPlayer();
  AudioPlayerState audioPlayerState = AudioPlayerState.PAUSED;

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
