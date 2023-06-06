import 'package:flutter/material.dart';
import 'package:flutter_firebase_crud_operations/Pages/projects.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

class dashboard extends StatelessWidget {

final db=FirebaseFirestore.instance;


  final localdb=[
    {
      'project1':[{'empid':'10801','name':'Thirumoorthi','doj':'18-03-1998'},
        {'empid':'10802','name':'devi','doj':'17-03-1998'},],

      'project 2':[{'empid':'10803','name':'Aravinth','doj':'16-03-1990'},
        {'empid':'10804','name':'Subasree','doj':'15-03-1991'}],

      'project 3':[{'empid':'10805','name':'vicky','doj':'14-03-1992',
        'empid':'10806','name':'hari','doj':'13-03-1993'}]

    }];
  var emp1=<String,dynamic>{'name':'thiru','last':'east','dob':'1998'};
var empno=<int>[10801];


var testlist=[];

  void printing()
  {

    print( db.collection('user').doc('kNXZUGQQs5e9D97OffzW').get().then((DocumentSnapshot data)
    {
      return data.data();
    }).toString()
    );



    ((localdb[0]['project1']as List<Map<String,Object>>)).map((e)
    {

      return e['empid'];
    }).toList();

    // print((localdb[0]['project1']as List<Map<String,Object>>).length );


    // for(int i=0;i<(localdb[0]['project1']as List<Map<String,Object>>).length;i++ )
    //   {
    //     print((localdb[0]['project1']as List<Map<String,Object>>)[i]['empid']);
    //
    //     print((localdb[0]['project1']as List<Map<String,Object>>));


    //get all the colections in a data
    final getcollection=db.collection('PROJECTS').get().then((QuerySnapshot)
        {
          print('Successfully updated');
          for(var docSnapshot in QuerySnapshot.docs)
            {
print(docSnapshot.id.toString());


            }
        },
        onError: (e)=>print('Error completing data')


    );




  }
  Widget build(BuildContext context) {
    var height=MediaQuery.of(context).size.height;
    var width=MediaQuery.of(context).size.width;
     final count =db.collection('NEW TRAINEES').count().get();
     print('');

     Future<Widget> add() async {
       var count=await db.collection('NEW TRAINEES').count().get();
       return Text('${count.toString()}');

     }


     Future<Widget>  getdata()async
    {
      final QuerySnapshot Result= await db.collection('NEW TRAINEES').get();
      final  number=Result.docs.length;
      return Text('${number}');
    }

    return Scaffold( backgroundColor: Color.fromRGBO(227, 238, 255,15),
      body:
      SafeArea(
        child: Container(
          height: height,
          width: width,
          child: Column(
            children: [Expanded(flex: 2,
                child: Container(
                  padding: EdgeInsets.all(20),
                  color: Colors.white,
                  child: Row(mainAxisAlignment: MainAxisAlignment.start,
                    children: [Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [Text('Hello,',style: TextStyle(color: Colors.black,fontSize: 25),),
                                     Text('Karthick',style: TextStyle(color: Colors.indigo, fontWeight: FontWeight.bold, fontSize: 25),
                                     ),],
                        ),
                    SizedBox(height: 10,),Text('10801',
                    style: TextStyle(color: Colors.indigo,
                        fontSize: 20,fontWeight: FontWeight.bold)),SizedBox(height: 5,),
                        Text('ADMIN',style: TextStyle(color: Colors.grey,
                          fontWeight: FontWeight.bold,fontSize: 18),)],),
                    SizedBox(width: width*0.30,),
                    Image.asset('assets/images/profile.PNG')],
                  ),
                )),
            Expanded(flex: 8,
                child: Container(child: Column(
                  children: [
                    SizedBox(height: height*0.1,),
                    Card(elevation: 4,
                      child: Container(height: 100,width: 350,
                      child:
                    Row(children: [Container(height: 100,width: 20,color: Colors.indigo,),
                      TextButton(onPressed: (){
                        printing();
                        // Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => totalprojects(),));

                      },child: Column(
                        children: [

                          Column(
                            children: [
                              Text('NEW TRAINEES',style: TextStyle(fontSize: 25,color: Colors.grey),),

                            ],
                          ),


                        ],
                      ),)],),),),
                    SizedBox(height: height*0.06,),
                  Card(elevation: 4,
                    child: Container(height: 100,width: 350,child: Row(children: [Container(height: 100,width: 20,color: Colors.pinkAccent,),
                      TextButton(onPressed: (){
                        // display();

                      },child: Column(
                        children: [
                          Text('EXISTING TRAINEES',style: TextStyle(
                              fontSize: 25,color: Colors.grey),
                            
                          
                          )
                        ],
                      ))]),
                  ),),
                    SizedBox(
                      height: height*0.06,),
                  FutureBuilder(future: db.collection('NEW TRAINEES').get(),
                      builder: (context, snapshot) {
                    if(snapshot.hasData)
                      {
                        List myDocCount=snapshot.data.docs;
                        var totalstudent=myDocCount.length.toString();
                        return Text(totalstudent.toString());
                      }
                    else{
                        return Center(child: Text(''));

                        }




                  },



                  ),
                  Card(elevation: 4,
                    child: Container(
                        height: 100,width: 350,child: Row(children: [Container(height: MediaQuery.of(context).size.height*0.1,width: 20,color: Colors.greenAccent,),
                        TextButton(onPressed: (){

                          getdata();
                        },child: Text('OVERALL TRAINEES',style: TextStyle(fontSize: 25,color: Colors.grey),))],)),)],



                ),
                ))],
          ),
        ),
      ),);
  }

}