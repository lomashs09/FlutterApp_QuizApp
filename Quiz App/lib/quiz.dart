import 'package:flutter/material.dart';
import './answers.dart';
import './questions.dart';
class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final Function answerQuestion;
  final int index;
  Quiz({this.questions, this.answerQuestion, this.index});
  @override
  Widget build(BuildContext context) {
    
    return Column(
      children: 
      <Widget>[Questions(questions[index]['que'],), 
      ...(questions[index]['answers'] as List<Map<String, Object>>).map((answer){
        return Answers(() => answerQuestion(answer['score']), answer['text']);
      }).toList()
        ],
      );
  }
}