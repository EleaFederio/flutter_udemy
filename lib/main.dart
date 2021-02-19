import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  
  var questionIndex = 0;

  void answerQuestion(){
    questionIndex = questionIndex + 1;
    print(questionIndex);
    print('Answer Choosen');
  }

  Widget build(BuildContext context){

    var questions = [
      "What's your name?",
      "What's your age?",
      "How old are you?"
    ];

    return MaterialApp(home: 
      Scaffold(
        appBar: AppBar(
          title: Text('Hello World'),
        ),
        body: Column(
          children: <Widget>[
            Text(questions[questionIndex]),
            RaisedButton(
              child: Text('Answer 1'),
              onPressed: answerQuestion
            ),
            RaisedButton(
              child: Text('Answer 2'), 
              onPressed: () => print('Hahaha')
            ),
            RaisedButton(
              child: Text('Answer 3'),
              onPressed: answerQuestion
            )
          ],
        ),
      )
    );
  }
} 