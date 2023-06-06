import 'package:flutter/material.dart';
import  'package:circular_countdown/circular_countdown.dart';
import 'package:dotted_line/dotted_line.dart';



class testing extends StatefulWidget {
  const testing({Key? key}) : super(key: key);

  @override
  State<testing> createState() => _testingState();
}

class _testingState extends State<testing> {
  Widget dashedline ()
  {
      return Center(child: DottedLine(dashColor: Colors.black),);
  }

  Widget horrizontaldashedline()
  {

    return DottedLine(direction: Axis.vertical);

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(flex:3,
                      child: Container(padding: EdgeInsets.only(top: 3,bottom: 3,left: 10),
                          color: Colors.white,
                  height: MediaQuery.of(context).size.height*0.1,
                        width:MediaQuery.of(context).size.width*0.1 ,child:
                          Image.asset('assets/images/profile.jpg')),
                  ),
                  Expanded(flex: 5,
                      child:Container(padding: EdgeInsets.all(5),
                        height: MediaQuery.of(context).size.height*0.1,width:MediaQuery.of(context).size.width*0.1,
                        color: Colors.white,child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [Text('Saravanan',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                          Text('10801',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)],
                        ),)),
                  Expanded(flex: 4,
                      child: Container(height: MediaQuery.of(context).size.height*0.1,width:MediaQuery.of(context).size.width*0.1,
                       padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.02)
                       , color: Colors.white,
                      child: Text('18-03-1998',style: TextStyle(color: Colors.blueGrey,fontSize: 18)),))


                ],
              ),
              Container(
                height: MediaQuery.of(context).size.height*0.2,
                width: MediaQuery.of(context).size.width*1,
                color: Colors.white,

              ),
              Container(
                child: Column(
                  mainAxisAlignment:  MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        style:
                        ElevatedButton.styleFrom(backgroundColor:Color.fromRGBO(0,0,80,40) ,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(30))),
                      fixedSize: Size(250, 40)),
                        onPressed: () {  },child: Text('Punch In'),),
                    ),

                    TimeCircularCountdown(
                      strokeWidth: 10,
                      textStyle: TextStyle(fontWeight: FontWeight.bold),
                      countdownTotalColor: Colors.lightGreen,
                      countdownCurrentColor: Colors.blue,
                      countdownRemainingColor: Colors.blueAccent,
                      unit: CountdownUnit.minute,
                    countdownTotal: 30,
                    onUpdated: (unit,remainingTime)=>print('Updated'),
                      onFinished: ()=>print('Countdown finished!'),),





                    Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: [Icon(Icons.location_on_outlined),
                      Text('  Your Location: Guindy',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,
                      color: Colors.blueAccent),)],),



                  ],
                ),
                decoration: BoxDecoration(border: Border.all(width: 1,color: Colors.black)),
                height:MediaQuery.of(context).size.height*0.3 ,
                width: MediaQuery.of(context).size.width*1,),
          Expanded(
              child: Container(child: Column(
                children: [
                  Row(children: [Column()],),
                  Row(),

                ],
              )),

            ),
            Container()

            ],
          ),


        ),

      )  ,
    bottomNavigationBar: BottomNavigationBar(backgroundColor: Colors.indigo,
      items:const <BottomNavigationBarItem> [
      BottomNavigationBarItem(icon: Icon(Icons.home),label: 'home'),
      BottomNavigationBarItem(icon: Icon(Icons.account_box_sharp),label: 'call'),
      BottomNavigationBarItem(icon: Icon(Icons.add_call),label: 'phone')
    ],
    ),
    );
  }
}
