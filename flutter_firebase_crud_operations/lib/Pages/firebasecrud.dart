import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
class firebase extends StatefulWidget {
  const firebase({Key? key}) : super(key: key);

  @override
  State<firebase> createState() => _firebaseState();
}

class _firebaseState extends State<firebase> {
  var db=FirebaseFirestore.instance;
  
  

  final city=<String,String>{'empid':'10801'};
final framework=<String,String>{'Languages':'kotlin'};
final frameworks={'captital':true};
final framwork1={'Language':'java'};
final framwork2={'Language':'java script'};


final name1=<String ,String>{'name':'thirumoorthi'};


String details='employees';




  @override
  Widget build(BuildContext context) {
    // db.collection('${name}').doc('details').set(city);
    // db.collection('EXISTING TRAINEES').doc('10801').collection('DOMAINS').doc('FRAMEWORKS').set(framework);
   // db.collection('EXISTING TRAINEES').doc('10801').collection('DOMAINS').doc('LANGUAGES').set(framework);
   //  db.collection('EXISTING TRAINEES').doc('10801').collection('DOMAINS').doc('LANGUAGES').set(framwork2,SetOptions(merge:true));
   // db.collection('test').add(framework);
    
     db.collection('NEW TRAINEES').doc('PROJECT 3').set(framework,SetOptions(merge: true));

    
    // db.collection('EXISTING TRAINEES').doc('10801').set(framework,SetOptions(merge:true ));
    


   var height=MediaQuery.of(context).size.height;
    var width=MediaQuery.of(context).size.width;




    return Scaffold(
      appBar: AppBar(title: Text('Crud')),
      body: SafeArea(
        child: Container(
          height: height,
          width: width,
          child: Center(child: Column(
            children: [
              TextField(
                controller:naming,
                  decoration: InputDecoration(
                      labelText: 'name',
                      border:OutlineInputBorder(borderSide: BorderSide(width: 7)))),
              TextField(controller: aging,
                  decoration: InputDecoration(labelText: 'Age',
                  border:OutlineInputBorder(borderSide: BorderSide(width: 7)))),
              TextField(controller: dobto,
                  decoration: InputDecoration(labelText: 'Birthday',
                  border:OutlineInputBorder(borderSide: BorderSide(width: 7)))),
              ElevatedButton(onPressed: (){
                enteruser(name:naming.text,age: aging.text,dob: dobto.text);
                }, child: Text('enter')),
              ElevatedButton(onPressed: (){Getdocumentslist();}, child: Text('Text'))

            ],
          )
          ),
        ),
      ),
    );
  }

  var naming=TextEditingController();
  var aging=TextEditingController();
  var dobto=TextEditingController();


  Future enteruser({required name,required age,required dob})async
  {
    final json={'name':name,
      'age':age,
    'dob':dob};
   await  db.collection('emp').doc('${name}').set(json);
   db.collection('emp').snapshots().map((snapshot) =>snapshot.docs.map((doc) => print(doc.data()))


       
       
   );
   db.collection('NEW TRAINEES').doc('PROJECT 1').snapshots().map((event)
   {
     return  debugPrint(event.toString());
   }).toList();

   //To get the indiviual document collection
    DocumentSnapshot snap=await db.collection('EXISTING TRAINEES').doc('PROJECT 1').collection('FRONT END').doc('10801').get();
    print(snap['designation']);
    //1.Count the documents






 





  }
  Future<void>Getdocumentslist()async
  {
    final QuerySnapshot Result=await db.collection('NEW TRAINEES').doc('PROJECTS').collection('P1').get();
    final  number=Result.docs.length;
    print(number);
    final List<DocumentSnapshot>Documents=Result.docs;
    List<Object>list=Documents.map((DocumentSnapshot doc)
    {
      print(doc.toString());
      return doc;
    }).toList();

  }



}

