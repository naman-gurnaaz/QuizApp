import 'package:first_app/result.dart';
import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answer': [
        'Red',
        'Black',
        'Lavender',
        'Emerald',
      ]
    },
    {
      'questionText': 'What\'s your favourite animal?',
      'answer': [
        'Dogs',
        'Cats',
        'Turtle',
        'Giraffe',
      ]
    },
    {
      'questionText': 'Who\'s your favourite Harry Potter Character?',
      'answer': [
        'Luna Lovegood',
        'Bellatrix Lestrange',
        'Prof. Albus Dumbledore',
        'Prof. Minerva McGonnagal',
      ]
    },
    {
      'questionText': 'What\'s your Harry Potter house?',
      'answer': [
        'Gryffindor',
        'Hufflepuff',
        'Ravenclaw',
        'Slytherin',
      ]
    }
  ];

  var _questionIndex = 0;

  void _answerQuestion() {
    if (_questionIndex < _questions.length) {}

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz that doesn\'t really tell you anything.'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
              answerQuestion :_answerQuestion,
               questions: _questions,
               questionIndex: _questionIndex,
            )
            : Result(),
      ),
    );
  }
}
