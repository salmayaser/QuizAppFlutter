import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  var totalScore;
  final VoidCallback restartQuiz;

  Result(this.totalScore, this.restartQuiz);

  get result {
    var resultText = 'You did it!';
    if (totalScore <= 8) {
      resultText = 'You are so bad!';
    } else if (totalScore <= 12) {
      resultText = 'You are ... strange?!';
    } else if (totalScore <= 16) {
      resultText = 'Pretty likeable!';
    } else {
      resultText = 'You are awesome and innocent!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        Text(
          '$result',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        ElevatedButton(
          child: Text('Restart Quiz'),
          onPressed: restartQuiz,
        )
      ],
    ));
  }
}
