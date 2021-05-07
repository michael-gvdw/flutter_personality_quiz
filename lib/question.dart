import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String text;
  final double fontSize = 16;

  Question({this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(this.fontSize * 1.5),
      child: Text(
        this.text,
        style: TextStyle(fontSize: this.fontSize * 1.5),
        textAlign: TextAlign.center,
      ),
    );
  }
}
