import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  // void _answerQuestion() {
  //   setState(() {
  //     if (_questionIndex == 3)
  //       _questionIndex = 0;
  //     else {
  //       _questionIndex = _questionIndex + 1;
  //     }
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    List<Map<String, Object>> questions = [
      {
        "questionText": 'What\'s you favorite color?',
        "answers": ['Black', 'Red', 'Green', 'White'],
      },
      {
        "questionText": 'What\' s your favorite animal?',
        "answers": ['Rabbit', 'Snake', 'Elephant', 'Lion']
      },
      {
        "questionText": 'What\' s your favorite instructur?',
        "answers": ['Max', 'Ryan', 'John', 'Drake'],
      }
    ];

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('My App'),
          ),
          body: Column(
            children: [
              Question(questions[_questionIndex]["questionText"], true),
              // ...(questions[_questionIndex]["answers"] as List<String>)
              //     .map((answer) {
              //   return Answer(_answerQuestion, answer);
              // }).toList()
            ],
          )),
    );
  }
}
