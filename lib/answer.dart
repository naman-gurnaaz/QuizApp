import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      // ignore: deprecated_member_use
      child: RaisedButton(
        textColor: Colors.white,
        child: Text(
          answerText,
        ),
        onPressed: () {
          selectHandler();
        },
        color: Colors.blue,
      ),
    );
  }
}
