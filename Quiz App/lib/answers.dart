import 'package:flutter/material.dart';
class Answers extends StatelessWidget {
  final Function selectHandler;
  final String ans;
  Answers(this.selectHandler, this.ans);
  @override
  Widget build(BuildContext context) {
    return Container(
    width: double.infinity,
    child: RaisedButton
    (
      textColor: Colors.white,
    color: Colors.blue,  
    child:Text(ans),
    onPressed: selectHandler,)
      
    );
  }
}