import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
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
  int leftDiceNumber = 3;
  int rightDiceNumber = 5;
  void diceNumber() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Row(
          children: [
            Expanded(
              child: ElevatedButton(
                child: Image.asset(
                  'images/dice$leftDiceNumber.png',
                  height: 200,
                  width: 200,
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.red,
                ),
                onPressed: () {
                  diceNumber();
                },
                //print('leftbutton is pressed');
              ),
            ),
            Expanded(
              child: ElevatedButton(
                child: Image.asset(
                  'images/dice$rightDiceNumber.png',
                  height: 200,
                  width: 200,
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.red,
                ),
                onPressed: () {
                  diceNumber();
                  //print('right button is pressed');
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
