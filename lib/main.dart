import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Xylophone(),
    ));

class Xylophone extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: XylophoneKeys(),
      ),
    );
  }
}

class XylophoneKeys extends StatefulWidget {
  @override
  _XylophoneKeysState createState() => _XylophoneKeysState();
}

class _XylophoneKeysState extends State<XylophoneKeys> {

  void playSound(int note) {
    final assetsAudioPlayer = AssetsAudioPlayer();
    assetsAudioPlayer.open(
      Audio("assets/note$note.wav"),
    );
  }

  Widget xylophoneKey({Color color, int note}) {
    return Expanded(
      child: FlatButton(
        onPressed: (){
          playSound(note);
        },
        color: color,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        xylophoneKey(color: Colors.red, note: 1),
        xylophoneKey(color: Colors.orange, note: 2),
        xylophoneKey(color: Colors.yellow, note: 3),
        xylophoneKey(color: Colors.green, note: 4),
        xylophoneKey(color: Colors.teal, note: 5),
        xylophoneKey(color: Colors.cyan, note: 6),
        xylophoneKey(color: Colors.blue, note: 7),
        xylophoneKey(color: Colors.purple, note: 8),
        SizedBox(
          width: double.infinity,
        )
      ],
    );
  }
}

