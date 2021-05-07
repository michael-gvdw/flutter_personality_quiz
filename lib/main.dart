import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

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
  final _questions = const [
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
    },
    {
      'question': 'What is your star sign?',
      'answers': [
        'Aries',
        'Taurus',
        'Gemini',
        'Cancer',
        'Leo',
        'Virgo',
        'Libra',
        'Scorpious',
        'Sagittarius',
        'Capricornus',
        'Aquarius',
        'Piscesß'
      ]
    }
  ];

  void _answerQuestion() {
    setState(() {
      _questionIndex++;
    });
  }

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Personality Quiz!'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                questions: _questions,
                questionIndex: _questionIndex,
                answerQuestion: _answerQuestion)
            : Result(
                callback: _resetQuiz,
              ),
      ),
    );
  }
}
