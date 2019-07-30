import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final Function resetHandler;
  final int score;
  Result(this.score, this.resetHandler);

  String get resultPhase{
    var resultText ='Your Text is Completed!';
    if(score<=3)
    {
      resultText= '\'Poor\' You performance is poor, your score is less than 3';
    }
    else if( score< 6)
    {
      resultText = '\'Average\' Work Harder ! you can do more better.';

    }
    else {
      resultText = '\'Excellent\' You are awesome, you answered most questions correctly';
    }
    return resultText;
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
      children: <Widget> [ 
        Text(
        resultPhase, style: TextStyle(
          fontSize: 28.0, fontWeight: FontWeight.bold
          ),
          textAlign: TextAlign.center, 
          ),
          FlatButton(child: Text('Reset Quiz!'),onPressed: resetHandler,)
      ])
    );
  }
}