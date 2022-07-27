import 'dart:math';

import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';
// impotring the material.dart package because we want a predefined set of wedges material themes wedges.

// widgets
//text() renders text to the screen.
//scaffold() is a widget that provides a basic design
// appBar() is a widget that provides a toolbar.

void main() => runApp(
    MyApp()); // runApp is a function that takes a core widget as an argument.

// every widget is an object and each object is a class
class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;
  static const questions = [
    {
      'question': 'What\'s your favorite color?',
      'answers': ['Red', 'Green', 'Blue', 'Yellow'],
    },
    {
      'question': 'What\'s your favorite animal?',
      'answers': ['Cat', 'Dog', 'Bird', 'Lion'],
    },
    {
      'question': 'What\'s your favorite food?',
      'answers': ['Pizza', 'Pasta', 'Tacos', 'Burritos'],
    }
  ];

// flutter draw this method  when this widget is placed into a tree
  @override
  Widget build(BuildContext ctx) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('My first application')),
        body: questionIndex < questions.length
            ? Column(
                children: <Widget>[
                  Question(questions[this.questionIndex]['question']),
                  ...(questions[this.questionIndex]['answers'] as List<String>)
                      .map((answer) {
                    return Answer(answer, this._answerQuestion);
                  }).toList()
                ],
              )
            : Center(
                child: Text('You did it!'),
              ),
      ),
    );
  }

  void _answerQuestion() {
    if (this.questionIndex < questions.length) {
      setState(() {
        this.questionIndex = (this.questionIndex + 1);
      });
    }
  }
}
