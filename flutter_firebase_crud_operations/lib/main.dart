import 'package:flutter/material.dart';
import 'package:flutter_firebase_crud_operations/Pages/addmember.dart';
import 'package:flutter_firebase_crud_operations/Pages/adminhomepage.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_firebase_crud_operations/Pages/dashboard.dart';
import 'package:flutter_firebase_crud_operations/Pages/emplist.dart';
import 'package:flutter_firebase_crud_operations/Pages/firebasecrud.dart';
import './Functions/functions.dart';

 Future main() async{
   WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp();

     runApp(MaterialApp(debugShowCheckedModeBanner: false,
     home:dashboard() ,));

}
