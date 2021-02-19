import 'package:flutter/material.dart';

class Answer extends StatelessWidget {

  final Function selectAnswerHandler;
  final String answerText;
  Answer(this.selectAnswerHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue[500],
        textColor: Colors.white,
        child: Text(answerText),
        onPressed: selectAnswerHandler
      ),
    );
  }
}