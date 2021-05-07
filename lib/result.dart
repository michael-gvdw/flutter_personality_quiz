import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final Function callback;

  Result({this.callback});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        children: [
          Text(
            'You are a: Bitch!',
            style: TextStyle(fontSize: 48),
          ),
          ElevatedButton(child: Text('Try Again!'), onPressed: this.callback)
        ],
      ),
    );
  }
}
