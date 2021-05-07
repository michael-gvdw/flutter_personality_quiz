import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String text;
  final Function callback;

  Answer({this.text, this.callback});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.fromLTRB(24, 16, 24, 0),
      child: ElevatedButton(
        child: Text(this.text),
        onPressed: this.callback,
      ),
    );
  }
}
