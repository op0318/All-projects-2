import 'package:flutter/material.dart';
import './main.dart';

class question extends StatelessWidget {
  @override
  String questionText;
  question(this.questionText);
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(questionText,style: TextStyle(
          fontSize: 28),
        textAlign: TextAlign.center,),
    );

  }
}
