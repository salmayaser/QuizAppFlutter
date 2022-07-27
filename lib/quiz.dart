import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final questionIndex;
  final questions;
  final Function answerQuestion;
  Quiz({this.questionIndex, this.questions, this.answerQuestion});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Question(questions[this.questionIndex]['question']),
        ...(questions[this.questionIndex]['answers'] as List<Map>).map((answer) {
          return Answer(answer['text'], () => answerQuestion(answer['score']));
        }).toList()
      ],
    );
  }
}
