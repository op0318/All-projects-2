import 'package:flutter/material.dart';
import './Gredient.dart';

void main()
{
  runApp(MaterialApp(home: Scaffold(
    body:GreadientContainer([
      Color.fromRGBO(255, 26, 2, 80),
      Color.fromARGB(255, 45, 7, 98)]) ,
  ),));
}

