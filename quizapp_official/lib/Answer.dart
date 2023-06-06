import 'package:flutter/material.dart';

class answer extends StatelessWidget {

  final VoidCallback Answerquestion;
  final String answerText;

  answer(this.Answerquestion,this.answerText);



  @override
  Widget build(BuildContext context) {
    return Container(
        width:double.infinity,

        child: ElevatedButton(

            onPressed: Answerquestion, child: Text(answerText)));
  }
}
