import 'package:flutter/material.dart';

import './answer.dart';
import './question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestion;

  Quiz({this.questions, this.questionIndex, this.answerQuestion});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Question(
          text: questions[questionIndex]['question'],
        ),
        SizedBox(
          height: 500,
          child: Scrollbar(
            isAlwaysShown: true,
            child: ListView(
              children: <Widget>[
                ...(questions[this.questionIndex]['answers'] as List<String>)
                    .map((answer) =>
                        Answer(text: answer, callback: answerQuestion))
                    .toList()
              ],
            ),
          ),
        )
      ],
    );
  }
}
