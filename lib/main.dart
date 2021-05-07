import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var questions = [
    {
      'question': 'What is you favourite color?',
      'answers': ['Black', 'Red', 'Green', 'Blue'],
    },
    {
      'question': 'What is you favourite animal?',
      'answers': ['Rabbit', 'Snake', 'Lion', 'Puppy'],
    },
    {
      'question': 'What is your favourite sport?',
      'answers': ['Sailing', 'Footbal', 'Running', 'Swimming']
    }
  ];

  void _answerQuestion() {
    setState(() {
      if (_questionIndex == questions.length - 1) {
        _questionIndex = 0;
      } else {
        _questionIndex++;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Personality Quiz!'),
        ),
        body: Column(
          children: <Widget>[
            Question(
              text: questions[_questionIndex]['question'],
            ),
            ...(questions[this._questionIndex]['answers'] as List<String>)
                .map(
                    (answer) => Answer(text: answer, callback: _answerQuestion))
                .toList(),
          ],
        ),
      ),
    );
  }
}
