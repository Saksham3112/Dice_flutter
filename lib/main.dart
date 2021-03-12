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
  int leftDi = 1;
  int rightDi = 1,
      corner1 = 1,
      corner2 = 1,
      corner3 = 1,
      corner4 = 1,
      u = 1,
      d = 1;
  void cor() {
    setState(() {
      corner1 = Random().nextInt(6) + 1;
      corner2 = Random().nextInt(6) + 1;
      corner3 = Random().nextInt(6) + 1;
      corner4 = Random().nextInt(6) + 1;
    });
    print('Left button is pressed.');
    print(corner1);
    print(corner2);
    print(corner3);
    print(corner4);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Row(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: FlatButton(
                onPressed: () {
                  cor();
                },
                child: Image.asset('images/dice$corner1.png'),
              ),
            ),
            Expanded(
              flex: 2,
              child: FlatButton(
                onPressed: () {
                  setState(() {
                    u = Random().nextInt(6) + 1;
                    d = Random().nextInt(6) + 1;
                  });
                  print('Right button is pressed.');
                },
                child: Image.asset('images/dice$u.png'),
              ),
            ),
            Expanded(
              flex: 1,
              child: FlatButton(
                onPressed: () {
                  cor();
                },
                child: Image.asset('images/dice$corner2.png'),
              ),
            ),
          ],
        ),
        Row(
          children: <Widget>[
            Expanded(
              child: FlatButton(
                onPressed: () {
                  setState(() {
                    leftDi = Random().nextInt(6) + 1;
                  });
                  print('Left button is pressed.');
                  print(leftDi);
                },
                child: Image.asset('images/dice$leftDi.png'),
              ),
            ),
            Expanded(
              child: FlatButton(
                onPressed: () {
                  setState(() {
                    rightDi = Random().nextInt(6) + 1;
                  });
                  print('Right button is pressed.');
                },
                child: Image.asset('images/dice$rightDi.png'),
              ),
            ),
          ],
        ),
        Row(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: FlatButton(
                onPressed: () {
                  cor();
                },
                child: Image.asset('images/dice$corner3.png'),
              ),
            ),
            Expanded(
              flex: 2,
              child: FlatButton(
                onPressed: () {
                  setState(() {
                    u = Random().nextInt(6) + 1;
                    d = Random().nextInt(6) + 1;
                  });
                  print('Right button is pressed.');
                },
                child: Image.asset('images/dice$d.png'),
              ),
            ),
            Expanded(
              flex: 1,
              child: FlatButton(
                onPressed: () {
                  cor();
                },
                child: Image.asset('images/dice$corner4.png'),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
