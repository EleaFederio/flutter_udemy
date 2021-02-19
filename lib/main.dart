import 'package:flutter/material.dart';
import 'package:udemy/quiz.dart';
import 'package:udemy/result.dart';


void main(){
  runApp(MyApp());
}


class MyApp extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }

}

// <MyApp> ** this belongs to MyApp class
// underscore before classname means 
class _MyAppState extends State<MyApp>{  
  
  // the assign value is final at the same time const so that the value cannot be changed
  final _questions = const [
    {'questionText': "What's is your favorite color?", 'answer': [
      {'text': 'Red', 'score': 10}, 
      {'text': 'Blue', 'score': 50},
      {'text': 'Green', 'score': 100}
    ]},
    {'questionText': "What's is your favorite fruit?", 'answer': [
      {'text': 'Avocado', 'score': 10},
      {'text': 'Banana', 'score': 50},
      {'text': 'Apple', 'score': 100}
    ]},
    {'questionText': "What's your favorite animal?", 'answer': [
      {'text': 'Dog', 'score': 10},
      {'text': 'Dinasaur', 'score': 50},
      {'text': 'Elepant', 'score': 75},
      {'text': 'Ant', 'score': 100}
    ]}
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _answerQuestion(int score){
    if(_questionIndex < _questions.length){
      // setState calls build method to rerender the component that has changed
      setState(() {
        _questionIndex = _questionIndex + 1;
      });
    }

    // this is same as _totalScore = _totalScore + score
    _totalScore += score;

    // print(_questionIndex);
    print('Answer Choosen');
  }

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  Widget build(BuildContext context){

    // when the array value is assign as const you can reassign a new value to the variable
    // ***** example *****
    // var questions = const {}
    //  ***** result *****
    // questions = [.new value]

    return MaterialApp(home: 
      Scaffold(
        appBar: AppBar(
          title: Text('Hello World'),
        ),
        body: _questionIndex < _questions.length ? 
          Quiz(questionIndex: _questionIndex, answerQuestion: _answerQuestion, questions: _questions)
        // ternary operator
        :
          Result(_totalScore, _resetQuiz())        
      )
    );
  }
}