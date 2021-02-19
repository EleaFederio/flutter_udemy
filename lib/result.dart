import 'package:flutter/material.dart';

class Result extends StatelessWidget {

  final int resultScore;
  final Function resetQuiz;
  Result(this.resultScore, this.resetQuiz);

  String get resultPhrase{
    var resultText = 'Your score is';
    if(resultScore >= 150){
      resultText = 'Your score is' + resultScore.toString();
    }else{
      resultText = 'You need to eat more';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold
            ),
          ),
          FlatButton(
            onPressed: resetQuiz, 
            child: Text('Restart Quiz'),
          )
        ],
      ),
    );
  }
}