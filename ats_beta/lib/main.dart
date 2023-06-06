import 'package:ats_beta/Screens/Dashboard/Dashboard.dart';
import 'package:ats_beta/Screens/Selectlocation.dart';
import 'package:ats_beta/Screens/WelcomePages/Splashscreen.dart';
import 'package:ats_beta/practice.dart';
import 'package:ats_beta/sqlconnection.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyHome());
}

class MyHome extends StatelessWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home:

      // newone(),


      // test(),
      //  Dashboard(),
      // Mssqlconnection(),
      splashscreen(),

      debugShowCheckedModeBanner: false,
     // home:valid(),
    );
  }
}

//THis is a check






