import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetQuiz;

  Result(this.resultScore, this.resetQuiz);

  String get resultPhrase {
    String resultText;

    if (resultScore <= 20) {
      resultText = 'You are boring, Sorry :)';
    } else if (resultScore <= 25) {
      resultText = "Nope. Still boring :D";
    } else if (resultScore <= 30) {
      resultText = 'Seriously? Boring.';
    } else if (resultScore <= 35) {
      resultText = 'Now we\'re talking ;)';
    } else {
      resultText = 'Finally made okay-ish choices, you.';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),

          TextButton(onPressed: (){
            resetQuiz();
            }, child: Text('Restart Quiz'), 
            style: TextButton.styleFrom(
              textStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 34),
              primary: Colors.blueAccent
            ),
          )
        ]
      )
    );
  }
}
