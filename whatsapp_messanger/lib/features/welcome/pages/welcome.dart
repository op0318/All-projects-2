import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:const Color(0xFF111B21),
      body: Column(
        children: [
          Expanded(child:Container(color: Colors.red,
          child: Image.asset("Assets/images/splash_light.png"),) ),
          Expanded(child:Container(color: Colors.blue,) )
        ],
      ),
    );
  }
}
