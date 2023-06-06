import 'package:flutter/material.dart';
import './Gredient.dart';

class StylesText extends StatelessWidget {
   StylesText(this.text,{super.key});
String? text;
  @override
  Widget build(BuildContext context)
  {
    return  Text('Hello world!',
      style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,
      color: Colors.white),);
  }
}