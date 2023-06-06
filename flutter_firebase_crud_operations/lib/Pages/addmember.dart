import 'package:flutter/material.dart';

class addmember extends StatelessWidget {
  const addmember({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var name=<String>['Photo','Name','Designation','Emp-id','Date'];


    return Scaffold(backgroundColor: Color.fromRGBO(108, 152, 253, 1),
      appBar:AppBar(centerTitle: true,title: Text('add Member',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),)),
      body: Padding(
        padding:  EdgeInsets.only(top: 10,left: 20,right: 15),
        child: Container(decoration:
        BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10)),
            height: MediaQuery.of(context).size.height*0.6,
            width: MediaQuery.of(context).size.width*0.9,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [Row(crossAxisAlignment: CrossAxisAlignment.start,
                children: [Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [...name.map((e)  {
                  return Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text(e,style: TextStyle(fontSize: 26),),
                  );
                }).toList()],),Column(children: [Container(
                  child: Center(child: IconButton(icon:Icon(Icons.camera_alt_outlined),onPressed: (){},),),

                  height: MediaQuery.of(context).size.height*0.1,
                  width: MediaQuery.of(context).size.width*0.2,
                  decoration: (
                      BoxDecoration(border: Border.all(width: 1.5),
                          color: Colors.white,
                    shape: BoxShape.circle)),),
                Container(height: 10,width: 100,
                  child: TextField(decoration: InputDecoration(
                      border: OutlineInputBorder(borderSide: BorderSide(color: Colors.black,
                          width: 5)))),
                ),
                TextField()],)],),],
            ),
          ),
        ),
      ),
    );
  }
}




class update extends StatelessWidget {
  const update({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(108, 152, 253, 1),
   appBar: AppBar(centerTitle: true,
       title: Text('Add Member!')),
   body: SafeArea(
     child: Column(
       children: [Padding(
         padding: const EdgeInsets.all(25),
         child: Container(
           decoration:  BoxDecoration(
             color: Colors.white,
               borderRadius: BorderRadius.circular(10)),
           height: MediaQuery.of(context).size.height*0.6,
           width: MediaQuery.of(context).size.width*0.9,
           child: Column(
             children: [Padding(
               padding: const EdgeInsets.all(20.0),
               child: Row(children: [Text('Photo',style: TextStyle(fontSize: 25),),
                 SizedBox(width: 110),
                 Container(
                   child: Center(child: Icon(Icons.camera_alt_outlined)),
                   height: MediaQuery.of(context).size.height*0.1,
                   width: MediaQuery.of(context).size.width*0.2,
                   decoration: BoxDecoration(shape: BoxShape.circle,border: Border.all(width: 1)),)
               
               
               ],),
             ),

               Row(children: [

                 Padding(
                 padding: const EdgeInsets.all(20.0),
                 child: Text('Name',style: TextStyle(fontSize: 20),),
               ),SizedBox(width: 50,),Container(
                 decoration: BoxDecoration(border: Border.all(width:1)),
                 height: MediaQuery.of(context).size.width*0.1,
                   width: MediaQuery.of(context).size.width*0.5,
                   child: TextField())],),
             Row(children: [
               Padding(
                 padding: const EdgeInsets.all(20.0),
                 child: Text('Emp-id',style: TextStyle(fontSize: 20),),
               ),SizedBox(width: 45,),Container(
                   decoration: BoxDecoration(border: Border.all(width: 1)),
                   height: MediaQuery.of(context).size.width*0.1,
                   width: MediaQuery.of(context).size.width*0.5,
                   child: TextField())]),
             Row(children: [
               Padding(
                 padding: const EdgeInsets.all(20.0),
                 child: Text('Designation',style: TextStyle(fontSize: 20),),
               ),Container(
                   decoration: BoxDecoration(border: Border.all(width: 1)),
                   height: MediaQuery.of(context).size.width*0.1,
                   width: MediaQuery.of(context).size.width*0.5,
                   child: TextField())],
             ),
             Row(children: [
               Padding(
                 padding: const EdgeInsets.all(20.0),
                 child: Text('Project',style: TextStyle(fontSize: 20),),
               ),SizedBox(width: 45,),Container(
                   decoration: BoxDecoration(border: Border.all(width: 1)),
                   height: MediaQuery.of(context).size.width*0.1,
                   width: MediaQuery.of(context).size.width*0.5,
                   child: TextField())]),
             Row()],
           ),
           



         ),
       )],
     ),

   ), );
  }
}
class testtheapp extends StatelessWidget {
  const testtheapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height=MediaQuery.of(context).size.height*0.6;
    var width=MediaQuery.of(context).size.width*1;
    return Scaffold( backgroundColor: Color.fromRGBO(108, 153, 203, 1),
      appBar: AppBar(backgroundColor: Colors.white,
          title: Text('Project-1',style: TextStyle(color: Colors.indigo)),centerTitle: true),
      body: SafeArea(
        child: Padding(padding:EdgeInsets.all(15) ,
          child: Column(

            children: [
              Container(

                decoration: BoxDecoration(color: Colors.white,
                  borderRadius: BorderRadius.circular(15)
                ),
                height:height ,
                width: width,

                child: Row(
                  children: [Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 30,left: 20,right: 20),
                        child: Text('Photo ',style: TextStyle(fontSize: 30)),
                      ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30,left: 20,right: 20),

                      child: Text('Name',style: TextStyle(fontSize: 25)),
                    ),
                      Padding(
                        padding: const EdgeInsets.only(top: 30,left: 20,right: 20),
                        child: Text('Emp-id',style: TextStyle(fontSize:25)),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 30,left: 20,right: 20),
                        child: Text('designation',style: TextStyle(fontSize: 25)),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 30,left: 20,right: 20),
                        child: Text('Project',style: TextStyle(fontSize: 25)),
                      ),
                      Padding(padding: const EdgeInsets.only(top: 30,left: 20,right: 20),)
                    ],),SizedBox(height: 20,),
                    Column(children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          child: IconButton(onPressed: () {  }, icon:Icon(Icons.camera_alt_outlined) ,),
                          height: 70,width: 100,
                          decoration: BoxDecoration(
                            border: Border.all(width: 1),
                            shape: BoxShape.circle,color: Colors.white,),),

                      ),
                      SizedBox(height: 50,width: 200,child: TextField(),),
                      SizedBox(height: 50,width: 200,child: TextField(),),
                      SizedBox(height: 50,width: 200,child: TextField(),),
                      SizedBox(height: 50,width: 200,child: TextField(),)

                    ],),],
                ),

              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(

                  height: MediaQuery.of(context).size.height*0.15,
                  width: MediaQuery.of(context).size.width*1,
                  color: Colors.white,
                  child: Row(
                    children: [
                      ElevatedButton(style: ElevatedButton.styleFrom(),
                          onPressed: (){}, child:Text('Delete')),
                    ],
                  ),
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}


