import 'package:flutter/material.dart';
import 'package:whatsapp_clone/common/extension/Customthemeextension.dart';
import 'package:whatsapp_clone/common/utilities/colors.dart';
import './pages/WelcomePage.dart';
import 'package:whatsapp_clone/common/utilities/colors.dart';

class Privacyandterms extends StatelessWidget {
  const Privacyandterms({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal:30 ,vertical: 20),
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
            text: 'Read our',
            style: TextStyle(
                color: context.theme.greycolor,
              height: 1.5

            ),
            children: [
              TextSpan(style: TextStyle(color: context.theme.blueColor ),
                  text:'Privacy policy'),
              TextSpan( style: TextStyle(color: Colors.white),
                  text: 'Tap" Agree and continue to accept the'),
              TextSpan( style: TextStyle(color: context.theme.blueColor)  ,
                  text: 'Terms of service')
            ]
        ),
      ),
    );
  }
}
