import 'package:flutter/material.dart';
import 'package:udemy/answer.dart';
import 'package:udemy/question.dart';

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
  var _questionIndex = 0;

  void answerQuestion(){
    // setState calls build method to rerender the component that has changed
    setState(() {
       _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    print('Answer Choosen');
  }

  Widget build(BuildContext context){

    const questions = [
      {'questionText': "What's is your favorite color?", 'answer': [
        'red', 'blue', 'green'
      ]},
      {'questionText': "What's is your favorite fruit?", 'answer': [
        'avocado', 'banana', 'apple'
      ]},
      {'questionText': "What's your favorite animal?", 'answer': [
        'dog', 'dinasaur', 'kingkong', 'talapang'
      ]}
    ];

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
        body: Column(
          children: <Widget>[
            Question(questions[_questionIndex]['questionText']),
            // questions answer is a list of String
            ...(questions[_questionIndex]['answer'] as List<String>).map((question)  {
              // Answer class have two parameters *** Answer(this.selectAnswerHandler, this.answerText) ***
              return Answer(answerQuestion, question);
              // convert into a list
            }).toList()
          ],
        ),
      )
    );
  }
}