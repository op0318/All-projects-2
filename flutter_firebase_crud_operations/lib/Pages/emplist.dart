import 'package:flutter/material.dart';


class emplist extends StatelessWidget {
  const emplist({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height=MediaQuery.of(context).size.height;
    var width=MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(centerTitle: true,title: Text('PROJECT 1',
      style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),)),
      body: ListView.builder(itemCount: 5,
        itemBuilder: (context, index) {
        return Padding(padding: EdgeInsets.all(15),
        child: Container(color: Colors.red,
          height:height*0.15,
        width: width*0.8,
        child: Row(children: [Padding(padding: EdgeInsets.all(10),
        child:Image.asset('assets/emplist/thiru.PNG') ,)],),),);
      },),


    );
  }
}
