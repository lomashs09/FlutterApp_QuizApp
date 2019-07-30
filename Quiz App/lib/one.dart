import 'package:flutter/material.dart';

void main()=> runApp(NewClass());
class NewClass extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(appBar: AppBar(title: Text('New App'),),
      body: Column(children: <Widget>[Text("Choose one Option", style: TextStyle(fontSize: 30.0, color: Colors.tealAccent),), 
      RaisedButton(
        child: Text("Option 1"),
        onPressed: null,),
         RaisedButton(
        child: Text("Option 2"),
        onPressed: null,),
         RaisedButton(
        child: Text("Option 3"),
        onPressed: null,),
        ],
      ),
      ),);
  }