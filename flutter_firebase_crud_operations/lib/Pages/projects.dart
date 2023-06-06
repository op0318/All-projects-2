import 'package:flutter/material.dart';
import 'package:flutter_firebase_crud_operations/Pages/dashboard.dart';


class totalprojects extends StatelessWidget {
  const totalprojects({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height=MediaQuery.of(context).size.height;
    var width=MediaQuery.of(context).size.width;
    return Scaffold(backgroundColor: Color.fromRGBO(108,152, 253, 1),
      appBar: AppBar(backgroundColor: Colors.white,
        leading:IconButton(color: Colors.black,
            onPressed: () { Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => dashboard(),)); }, icon:Icon(Icons.arrow_back_outlined)),
        centerTitle: true,title: Text(
          'NEW TRAINEES',style: TextStyle(color:Color.fromRGBO(5, 6, 149, 1))),),
      body:Padding(padding: EdgeInsets.all(height*0.025),
      child: Column(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,
        children: [Row(children: [
          Card(elevation: 20,
            child: Container(
              child: Center(
                child: Column(children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Image.asset('assets/images/project1.PNG'),
                  ),
                Text('Project 1',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
                SizedBox(height: height*0.01,),
                Text('50',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),)]),
              ),
              color: Colors.white,
              height: MediaQuery.of(context).size.height*0.25,
              width: MediaQuery.of(context).size.width*0.4,
            ),
          ),
          SizedBox(width:width*0.06,),
          Card(elevation: 20,
            child: Container(
              child: Center(
                child: Column(children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Image.asset('assets/images/project2.PNG'),
                  ),
                  Text('Project 2',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
                  SizedBox(height: height*0.01,),
                  Text('50',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),)]),
              ),









              color: Colors.white,
              height: MediaQuery.of(context).size.height*0.25,
              width: MediaQuery.of(context).size.width*0.4,
            ),
          ),

        ],)
          ,Row(children: [
            Card(elevation: 20,
              child: Container(
                child: Container(
                  child: Center(
                    child: Column(children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 20.0),
                        child: Image.asset('assets/images/project3.PNG'),
                      ),
                      Text('Project 3',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
                      SizedBox(height: height*0.01,),
                      Text('50',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),)]),
                  ),
                  color: Colors.white,
                  height: MediaQuery.of(context).size.height*0.25,
                  width: MediaQuery.of(context).size.width*0.4,
                ),
                color: Colors.white,
                height: MediaQuery.of(context).size.height*0.25,
                width: MediaQuery.of(context).size.width*0.4,
              ),
            ),
            SizedBox(width:width*0.06,),
            Card(elevation: 20,
              child: Container(
                child: Container(
                  child: Center(
                    child: Column(children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 20.0),
                        child: Image.asset('assets/images/project4.PNG'),
                      ),
                      Text('Project 4',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
                      SizedBox(height: height*0.01,),
                      Text('50',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),)]),
                  ),
                  color: Colors.white,
                  height: MediaQuery.of(context).size.height*0.25,
                  width: MediaQuery.of(context).size.width*0.4,
                ),
                color: Colors.white,
                height: MediaQuery.of(context).size.height*0.25,
                width: MediaQuery.of(context).size.width*0.4,
              ),
            ),

          ]),
          Row(children: [
            Card(elevation: 20,
              child: Container(
                child:Container(
                  child: Center(
                    child: Column(children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 20.0),
                        child: Image.asset('assets/images/project5.PNG'),
                      ),
                      Text('Project 5',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
                      SizedBox(height: height*0.01,),
                      Text('50',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),)]),
                  ),
                  color: Colors.white,
                  height: MediaQuery.of(context).size.height*0.25,
                  width: MediaQuery.of(context).size.width*0.4,
                ) ,
                color: Colors.white,
                height: MediaQuery.of(context).size.height*0.25,
                width: MediaQuery.of(context).size.width*0.4,
              ),
            ),
            SizedBox(width:width*0.06,),
            Card( color: Colors.red,
              elevation: 100,              child: Container(
                child: Center(
                  child: Column(children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: Image.asset('assets/images/project6.PNG'),
                    ),
                    Text('Project 6',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
                    SizedBox(height: height*0.01,),
                    Text('50',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),)]),
                ),
                color: Colors.white,
                height: MediaQuery.of(context).size.height*0.25,
                width: MediaQuery.of(context).size.width*0.4,
              ),
            ),

          ],)
        ],
      )),



    );}
}
