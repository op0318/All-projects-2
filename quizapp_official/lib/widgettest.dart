import 'package:flutter/material.dart';

class newclass
{
  final dummy=['thiru'];

  void debug()
  {
    dummy.add('moorthi');

 String name='amma';
 String newname='amma';
 String checkname=newname.split('').reversed.join('');
 if(checkname==name)
   {
     print('The string is palindrome');

     print(checkname);
   }
 else{
   print('The string not palindrome');
 }
  }
}



