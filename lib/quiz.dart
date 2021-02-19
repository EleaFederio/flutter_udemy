import 'package:flutter/material.dart';
import 'package:udemy/answer.dart';
import 'package:udemy/question.dart';

class Quiz extends StatelessWidget {
  
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestion;
  Quiz({@required this.questionIndex, @required this.answerQuestion, @required this.questions});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Question(questions[questionIndex]['questionText']),
        // questions answer is a list of String
        ...(questions[questionIndex]['answer'] as List<Map<String, Object>>).map((answer)  {
          // Answer class have two parameters *** Answer(this.selectAnswerHandler, this.answerText) ***
          // by using anonymous function here, 
          return Answer(() => answerQuestion(answer['score']), answer['text']);
          // convert into a list
        }).toList()
      ],
    );
  }
}