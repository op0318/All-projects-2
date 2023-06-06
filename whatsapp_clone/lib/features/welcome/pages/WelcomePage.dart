import 'package:flutter/material.dart';
import 'package:whatsapp_clone/common/extension/Customthemeextension.dart';
import 'package:whatsapp_clone/common/utilities/colors.dart';
import '../privacy_and_terms.dart';
import '../../../common/widgets/customelevatedbutton.dart';
import '../Widgets/Languagebutton.dart';


class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:
      Column(children: [
        Expanded(child: Align(
          alignment: Alignment.bottomCenter,
           child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 50),
            child: Image.asset(
                "Assets/images/circle.jpg",
            ),

          ),
        )
        ),
        SizedBox(height: 50,),
        Expanded(
          child: Column(
            children: [
                 const Text(
                      style: TextStyle(

                color: Colors.white,
                  fontWeight:FontWeight.bold ,
                  fontSize: 22),
                  'Welcome to WhatsApp'),
           const   Privacyandterms(),
              SizedBox( height: 10,),
              cutomelevtedbutton(
               onpressed:(){},text: 'Agree and continue', buttonwidth: null,),
              SizedBox(height: 30,),
              languagebutton()
              ],
          ),

        ),

      ]),
    );
  }
}
