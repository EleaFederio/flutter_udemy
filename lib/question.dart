import 'package:flutter/material.dart';

class Question extends StatelessWidget {

  final String questionText;
  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      // full width of app screen
      width: double.infinity,
      margin: EdgeInsets.all(10.0),
      child: Text(
        "questionText : " + questionText,
        style: TextStyle(
          fontSize: 28,
        ),  
        textAlign: TextAlign.center,
      ),
    );
  }
}