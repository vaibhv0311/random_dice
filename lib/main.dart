import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dice'),
          centerTitle: true,
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  var rnum = 1;
  var lnum = 1;

  void run() {
    lnum = Random().nextInt(6) + 1;
    rnum = Random().nextInt(6) + 1 /**/;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  run();
                });
              },
              child: Image(
                image: AssetImage("images/dice$lnum.png"),
              ),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  run();
                });
              },
              child: Image(
                image: AssetImage("images/dice$rnum.png"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
