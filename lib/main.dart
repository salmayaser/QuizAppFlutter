import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';
import './quiz.dart';
import './result.dart';
// impotring the material.dart package because we want a predefined set of wedges material themes wedges.

// widgets
//text() renders text to the screen.
//scaffold() is a widget that provides a basic design
// appBar() is a widget that provides a toolbar.

void main() => runApp(MyApp()); // runApp is a function that takes a core widget as an argument.

// every widget is an object and each object is a class
class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;
  var totalScore = 0;
  static const questions = [
    {
      'question': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Red', 'score': 0},
        {'text': 'Green', 'score': 1},
        {'text': 'Blue', 'score': 2},
        {'text': 'Yellow', 'score': 3},
      ],
    },
    {
      'question': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Cat', 'score': 0},
        {'text': 'Dog', 'score': 1},
        {'text': 'Rabbit', 'score': 2},
        {'text': 'Snake', 'score': 3},
      ],
    },
    {
      'question': 'What\'s your favorite food?',
      'answers': [
        {'text': 'Pizza', 'score': 0},
        {'text': 'Burger', 'score': 1},
        {'text': 'Pasta', 'score': 2},
        {'text': 'Rice', 'score': 3},
      ],
    }
  ];

// flutter draw this method  when this widget is placed into a tree
  @override
  Widget build(BuildContext ctx) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(title: Text('My first application')),
          body: questionIndex < questions.length
              ? Quiz(
                  questionIndex: questionIndex,
                  questions: questions,
                  answerQuestion: _answerQuestion,
                )
              : Result(totalScore, restartQuiz)),
    );
  }

  void _answerQuestion(int score) {
    if (this.questionIndex < questions.length) {
      setState(() {
        this.totalScore = totalScore + score;
        print(this.totalScore);
        this.questionIndex = (this.questionIndex + 1);
      });
    }
  }

  void restartQuiz() {
    setState(() {
      this.questionIndex = 0;
      this.totalScore = 0;
    });
  }
}
