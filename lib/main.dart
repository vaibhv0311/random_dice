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
    rnum = 3;
    lnum = 4;
    Random(rnum);
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
                print('Left button was pressed!');
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
                print('Right button was pressed!');
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
