import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final _answerText;
  final Function _answerQuestion;

  Answer(this._answerText, this._answerQuestion);

  @override
  build(BuildContext ctx) {
    return Container(
        width: double.infinity,
        margin: EdgeInsets.all(10),
        child: ElevatedButton(
          onPressed: _answerQuestion,
          child: Text(_answerText, style: TextStyle(color: Colors.white)),
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.blue)),
        ));
  }
}
