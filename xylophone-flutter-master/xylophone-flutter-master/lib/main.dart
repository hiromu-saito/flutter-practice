import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  Expanded bulidKey({int soundNumber, Color color}) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          final player = AudioCache();
          player.play('note$soundNumber.wav');
        },
        style: TextButton.styleFrom(
          backgroundColor: color,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(0)),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              bulidKey(soundNumber: 1, color: Colors.red),
              bulidKey(soundNumber: 2, color: Colors.orange),
              bulidKey(soundNumber: 3, color: Colors.yellow),
              bulidKey(soundNumber: 4, color: Colors.green),
              bulidKey(soundNumber: 5, color: Colors.teal),
              bulidKey(soundNumber: 6, color: Colors.blue),
              bulidKey(soundNumber: 7, color: Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
