import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const XylophonePage());
}

class XylophonePage extends StatelessWidget {
  const XylophonePage({Key? key}) : super(key: key);

  Expanded buildButton( no, color) {
    return Expanded(
        child: TextButton(
        onPressed: () {
          final audioPlayer = AudioCache();
          audioPlayer.play('note$no.wav');
        },
        style: TextButton.styleFrom(backgroundColor: color),
        child: const Text(''),
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: const Text(
            "XyloPhone",
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.white,
        ),
        body: SafeArea(

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildButton(1,Colors.red),
              buildButton(2,Colors.green),
              buildButton(3,Colors.orange),
              buildButton(4,Colors.blue),
              buildButton(5,Colors.yellow),
              buildButton(6,Colors.purple),
              buildButton(7,Colors.teal)
            ],
          ),
        ),
      ),
    );
  }
}
