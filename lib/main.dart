import 'package:flutter/material.dart';

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

class DicePage extends StatelessWidget {
  void fun() {}
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                print('Left button was pressed!');
              },
              child: Image(
                image: AssetImage("images/dice1.png"),
              ),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                print('Right button was pressed!');
              },
              child: Image(
                image: AssetImage("images/dice6.png"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
