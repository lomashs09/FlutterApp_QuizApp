import 'package:flutter/material.dart';
import './quiz.dart';
import './results.dart';


void main()=> runApp(NewClass());
class NewClass extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return NewClassState();
  }

}
class NewClassState extends State<NewClass>{
  var _index=0;
  var totalscore=0;

  void _answerQuestion(int score){
    totalscore=totalscore+score;
    setState(() {_index=_index+1;});
    print("qestion Answered");
    
  }
  @override
  Widget build(BuildContext context) {
    final  _questions= const [{'que': 'In which year of First World War Germany declared war on Russia and France?','answers':[{'text':'1914','score': 1},{'text':'	1917','score': 0},{'text':'	1915','score': 0},{'text':'	1916','score': 0}]},
    {'que': '	ICAO stands for','answers':[{'text':'International Civil Aviation Organization','score': 1},{'text':'	Indian Corporation of Agriculture Organization','score': 0},{'text':'Institute of Company of Accounts Organization','score': 0},{'text':'None of These','score': 0}]},
    {'que': '	India\'s first Technicolor film ____ in the early 1950s was produced by ____','answers':[{'text':'\'Jhansi Ki Rani\', Sohrab Modi','score': 1},{'text':'\'Jhansi Ki Rani\', Sir Syed Ahmed','score': 0},{'text':'\'Mirza Ghalib\', Sohrab Modi','score': 0},{'text':'\'Mirza Ghalib\', Munshi Premchand','score': 0}]},
    {'que': '	India has largest deposits of ____ in the world.','answers':[{'text':'Gold','score': 0 },{'text':'Copper','score': 0},{'text':'Mica','score': 1},{'text':'None','score': 0}]},
    {'que': '	Which cricketer had scored highest individual score in first-class cricket?','answers':[{'text':' Don Bradman','score':0 },{'text':'Brain Lara','score': 1},{'text':'Lane Hutton','score': 0},{'text':'Gary Sobers','score': 0}]},
    {'que': 'Which cricketer had scored highest individual score in ODI cricket? ','answers':[{'text':'Virat Kohli','score': 0},{'text':'Virender Sehwag','score': 0},{'text':'Sachin Tendulkar','score': 0},{'text':'Rohit Sharma','score': 1}]},
    {'que': 'Which cricketer had scored fastest century in ODI cricket?','answers':[{'text':'Vivian Richards','score': 0},{'text':' Corey Anderson','score': 0},{'text':'Shahid Afridi','score': 0},{'text':'AB de Villiers','score': 1}]},
    {'que': 'Which cricketer has taken most catches in ODI cricket?','answers':[{'text':'Ricky Ponting','score': 1},{'text':'Mahela Jayawardene','score': 1},{'text':'Jacques Kallis','score': 0},{'text':' Mark Waugh','score': 0}]},
    {'que': ' Which cricketer had scored fastest century in Test cricket?','answers':[{'text':'Vivian Richards','score': 1},{'text':'Brendon McCullum','score': 1},{'text':' Misbah-ul-Haq','score': 0},{'text':'Adam Gilchrist','score': 0}]},
    {'que': '	Which cricketer had scored most runs in a Test series?','answers':[{'text':'Sunil Gavaskar','score': 1},{'text':'Don Bradman','score': 1},{'text':'Kumar Sangakkara','score': 0},{'text':'Hanif Mohammad','score': 0}]},
    {'que': 'Which cricketer had scored most test runs in a calendar year?','answers':[{'text':'V. V. S. Laxman','score': 0},{'text':'Mohamed Yusuf','score': 1},{'text':'Rahul Dravid','score': 0},{'text':' Steve Waugh','score': 0}]},
    {'que': 'Which country will host 2015–Cricket World Cup ? ','answers':[{'text':' India ','score': 1},{'text':'Australia ','score': 0},{'text':'New Zealand ','score': 0},{'text':'Both (B) and (C) ','score': 1}]},
    ];
    void _resetQuiz(){
      setState(() {
        _index=0;
    totalscore=0;
      });
    
    }
    return  MaterialApp(
      home: Scaffold(appBar: AppBar(title: Text('My Quiz App'),),
      body: _index < _questions.length ? Quiz(answerQuestion : _answerQuestion, index : _index, questions:_questions) : Result(totalscore, _resetQuiz)
      ),
    );
    }
    } 