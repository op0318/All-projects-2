import 'package:flutter/material.dart';
import 'package:quizapp_official/Answer.dart';
import 'package:quizapp_official/Quiz.dart';
import 'package:quizapp_official/widgettest.dart';
import './questionText.dart';

void main()
{

  // var a= newclass();


  runApp(Myapp());
}

class Myapp extends StatefulWidget {
  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  final _questions=const [
    {'questionText':'who is your favourite cricket player?',
    'answers':
    [
      {'Text':'Virat kholi','Score':9}
      ,{'Text:Abde villiers','Score',10},
      {'Text':'Ms dhoni','Score':20},
      {'Text':'David warner','Score':8}
    ]
    },

    {'questionText':'Which one is your favourite food?',

    'answers':
    [
      {'Text':'Chicken biriyani','Score':10},
      {'Text':'Mutton Biriyani','score':9},
      {'Text':'prawn biriyani','score':7},
      {'Text':'fish biriyani','score':6}
    ]
    },
    {'questionText':'Which one is your favourite bat?',
    'answers':[
      {'Text':'kookaburra','score':9},
      {'Text':'MRF','score':10},
      {'Text':'Grey nicholls','score':8},
      {'Text':'sg','score':7}]}

  ];

  var _questionIndex=0;


  void _answerquestion()
  {


    setState(()
    {
      _questionIndex+=1;

    });
    if(_questionIndex<_questions.length)
      {
        print('We have more questions!');
      }
    else
      {
        print('No More Questions!');
      }


  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home:
    Scaffold(
      appBar:AppBar(title: Text('My Flutter App')),
      body: _questionIndex<_questions.length?
      quiz(questions: _questions,answerQuestion: _answerquestion,questionIndex: _questionIndex ,)
     : Center (child: Text('You have reached the maxmimum questions!',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),)),
    ));
  }
}
