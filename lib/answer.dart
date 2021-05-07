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
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.black,
        child: Text(this.text),
        onPressed: this.callback,
      ),
    );
  }
}
