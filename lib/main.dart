import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text(
            'Dice',
          ),
          centerTitle: true,
          backgroundColor: Colors.black,
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
  int diceNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 250,
        height: 250,
        child: FlatButton(
          onPressed: () {
            setState(() {
              diceNumber = 1 + Random().nextInt(6);
            });
          },
          child: Image.asset('images/dice$diceNumber.png'),
        ),
      ),
    );
  }
}
