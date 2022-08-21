import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  var questionText;

  Question(this.questionText, bool bool);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      width: double.infinity,
      child: Text(
        questionText,
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}