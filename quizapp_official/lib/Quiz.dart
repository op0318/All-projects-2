import 'package:flutter/material.dart';
import 'package:quizapp_official/questionText.dart';

import 'Answer.dart';

class quiz extends StatelessWidget {
final List<Map<String,Object>>questions;
final VoidCallback answerQuestion;
final int questionIndex;

quiz({required this.questions,required this.answerQuestion,required this.questionIndex} );

  @override
  Widget build(BuildContext context) {
    return  Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [

        question(questions[questionIndex]['questionText']as String),

    ...(questions[questionIndex]['answers']as List<Map<String,Object>>).map((answers){
    return answer(answerQuestion,answers['string']as String);
    }).toList()





    ],

    ); }
}

