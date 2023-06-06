import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Admin extends StatelessWidget {
 var db=FirebaseFirestore.instance;

 final user=<String,dynamic>{'thiru':'moorthi'};
 final domaindetails=<String,dynamic>{'db':'mssql'};



  final indexvalue=0;

  final List Empdetails=[
    {'10801':[{'name':'Thirumoorthi M','domain':'flutter','CurrentProject':'Ats'}]},
    {'10802':[{'name':'devi','domain':'Flutter','currentproject':'Pms'}]},
    {'10803':[{'name':'Vini','domain':'Flutter','currentproject':'pms'}]},
    {'10804':[{'name':'Ajith','domain':'Flutter','cureentproject':'sms'}]}];

  void check()
  {
    if(Empdetails[0]['10801']==employeeNumber.text)
      {
        print(Empdetails);

      }
    else
      {
        return;
      }








  }
  final employeeNumber=TextEditingController();
  
@override
  Widget build(BuildContext context) {
  // db.collection('EMPLOYEE DETAILS').doc('10801').collection('DOMAINS').doc('FRAMEWORKS').set(domaindetails).then((DocumentReference value) =>
  // print('Documentsnapshot added with id:${value.id}'));
  
  // db.collection('EMPLOYEE DETAILS').doc('10801').collection('DOMAINS').doc('FRAMEWORKS').update({'FLUTTER':'MOBILE APPLICATION'});

  
  final myheight=MediaQuery.of(context).size.height;
  final mywidth=MediaQuery.of(context).size.width;


    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          title:Text("Admin"),
          actions: [IconButton(onPressed: (){},
              icon:Icon(Icons.account_box) )]),
      body:
      Container(
        height: MediaQuery.of(context).size.height*1,
        width: MediaQuery.of(context).size.width*1,
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [Text("Wecome to The Admin Page",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.red),),
          SizedBox(height: MediaQuery.of(context).size.height*0.05,),
          TextField(
           controller: employeeNumber,
            decoration:InputDecoration(border: OutlineInputBorder(borderSide: BorderSide(width: 2))) ,

          ),
            SizedBox(height: myheight*0.05,),
            ElevatedButton(style: ElevatedButton.styleFrom(fixedSize:Size(mywidth*0.5,myheight*0.05), ),
                onPressed: check, child: Text('Enter'))
          ],
        ),
      ),
    );
  }
}
