import 'package:flutter/material.dart';
import 'package:whatsapp_clone/common/utilities/colors.dart';

class cutomelevtedbutton extends StatelessWidget {
  final double? buttonwidth;
  final VoidCallback onpressed;
  final String text;

  cutomelevtedbutton({required this.buttonwidth,required this.onpressed, required this.text});

  @override
  Widget build(BuildContext context) {
    return
      SizedBox(height: 42,
        width:buttonwidth ?? MediaQuery.of(context).size.width-100,
        child: ElevatedButton(onPressed: onpressed, child: Text(text)),
      );
  }
}
