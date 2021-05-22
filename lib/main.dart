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
        {'text': 'Lavender', 'score': 10},
        {'text': 'Black', 'score': 5},
        {'text': 'Red', 'score': 3},
        {'text': 'Emerald', 'score': 1},
      ]
    },
    {
      'questionText': 'What\'s your favourite animal?',
      'answer': [
        {'text': 'Dogs', 'score': 5},
        {'text': 'Cats', 'score': 3},
        {'text': 'Turtle', 'score': 7},
        {'text': 'Giraffe', 'score': 10},
      ]
    },
    {
      'questionText': 'Who\'s your favourite Harry Potter Character?',
      'answer': [
        {'text': 'Luna Lovegood', 'score': 10},
        {'text': 'Bellatrix Lestrange', 'score': 10},
        {'text': 'Prof. Albus Dumbledore', 'score': 10},
        {'text': 'Prof. Minerva McGonnagal', 'score': 10},
      ]
    },
    {
      'questionText': 'What\'s your Harry Potter house?',
      'answer': [
        {'text': 'Gryffindor', 'score': 8},
        {'text': 'Hufflepuff', 'score': 6},
        {'text': 'Ravenclaw', 'score': 10},
        {'text': 'Slytherin', 'score': 10},
      ]
    }
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _answerQuestion(int score) {
    _totalScore = _totalScore + score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
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
                answerQuestion: _answerQuestion,
                questions: _questions,
                questionIndex: _questionIndex,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
