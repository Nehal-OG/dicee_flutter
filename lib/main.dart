import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        // ignore: prefer_const_constructors
        backgroundColor: Color.fromARGB(255, 223, 99, 90),
        appBar: AppBar(
          centerTitle: true,
          title: Text("Dicee"),
          // ignore: prefer_const_constructors
          backgroundColor: Color.fromARGB(93, 130, 35, 29),
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  State<DicePage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<DicePage> {
  int leftside = 1;
  int rightside = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  setState(
                    () {
                      leftside = Random().nextInt(6) + 1;
                      rightside = Random().nextInt(6) + 1;
                    },
                  );
                },
                child: Image.asset("assets/images/dice$leftside.png"),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  setState(
                    () {
                      rightside = Random().nextInt(6) + 1;
                      leftside = Random().nextInt(6) + 1;
                    },
                  );
                },
                child: Image.asset("assets/images/dice$rightside.png"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
