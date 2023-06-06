import 'package:flutter/material.dart';

class functions{



  final localdb=[
    {
      'project1':[{'empid':'10801','name':'Thirumoorthi','doj':'18-03-1998'},
                            {'empid':'10802','name':'devi','doj':'17-03-1998'},],

'project 2':[{'empid':'10803','name':'Aravinth','doj':'16-03-1990'},
             {'empid':'10804','name':'Subasree','doj':'15-03-1991'}],

  'project 3':[{'empid':'10805','name':'vicky','doj':'14-03-1992',
                'empid':'10806','name':'hari','doj':'13-03-1993'}]

}];


}


class test extends StatefulWidget {
  const test({Key? key}) : super(key: key);

  @override
  State<test> createState() => _testState();
}

class _testState extends State<test> {

  final localdb=[
    {
      'project1':[{'empid':'10801','name':'Thirumoorthi','doj':'18-03-1998'},
        {'empid':'10802','name':'devi','doj':'17-03-1998'},],

      'project 2':[{'empid':'10803','name':'Aravinth','doj':'16-03-1990'},
        {'empid':'10804','name':'Subasree','doj':'15-03-1991'}],

      'project 3':[{'empid':'10805','name':'vicky','doj':'14-03-1992',
        'empid':'10806','name':'hari','doj':'13-03-1993'}]

    }];
  void printing()
  {


//project members count
    // print((localdb[0]['project1']as List<Map<String,Object>>).length );


    // for(int i=0;i<(localdb[0]['project1']as List<Map<String,Object>>).length;i++ )
    //   {
    //     print((localdb[0]['project1']as List<Map<String,Object>>)[i]['empid']);
    //
    //     print((localdb[0]['project1']as List<Map<String,Object>>));
    //
    //
  }








  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [ ...((localdb[0]['project1']as List<Map<String,dynamic>>)).map((e)
    {

      return Text(e['empid']);
    }).toList(),
    ],
      )
    );
  }
}



