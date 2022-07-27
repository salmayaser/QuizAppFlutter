import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String _questionText;

  Question(this._questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(10),
        width: double.infinity,
        child: Text(
          _questionText,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 28),
        ));
  }
}
