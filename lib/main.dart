/*
    John Olan S. Gomez
    Software Engineer Intern
    Boss Level Challenge 1
    January 26, 2024
 */
import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: BallPage(),
      ),
    );

class Ball extends StatefulWidget {
  const Ball({super.key});

  @override
  State<Ball> createState() => _BallState();
}

class _BallState extends State<Ball> {
  //ball value variable
  int ballNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Container(
            child: Image.asset('images/banner.gif'),
          ),
          Expanded(
            child: TextButton(
                onPressed: () {
                  setState(() {
                    ballNumber = Random().nextInt(5) + 1;
                    print(ballNumber);
                  });
                },
                child: Image.asset('images/ball$ballNumber.png')),
          ),
          Container(
            child: Image.asset('images/banner.gif'),
          ),
        ],
      ),
    );
  }
}

class BallPage extends StatelessWidget {
  const BallPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Center(
          child: Text(
            'Ask Me Anything',
            style: TextStyle(color: Colors.white),
          ),
        ),
        backgroundColor: Colors.indigo[900],
      ),
      body: Ball(),
    );
  }
}
