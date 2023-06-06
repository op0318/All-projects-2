import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {




  @override
  Widget build(BuildContext context) {
    var height=MediaQuery.of(context).size.height;
    final currentwidth=MediaQuery.of(context).size.width;
    print(currentwidth);
    return Scaffold(
      backgroundColor: currentwidth<350?Colors.red:Colors.blue,

      body:

      SafeArea(child:
      Column(
      crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(color:  Colors.white,
            height: MediaQuery.of(context).size.height*0.12,
            width: MediaQuery.of(context).size.width*1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [Column(
                children: [
                  Padding(
                    padding:  EdgeInsets.only(right:currentwidth*0.05 ),
                    child: Image.asset('assets/images/profile.jpg'),
                  ),
                ],
              ),
              Column(mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [Text('Saravanan',
                    style: TextStyle(fontWeight: FontWeight.bold,
                    fontSize: 25)),Text('10801',
                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)],),
                Container(
                    child: Text('10-03-1998',style: TextStyle(color: Colors.grey,fontSize: 17),))],
            ),),
          Card(child: Column(mainAxisSize:MainAxisSize.max ,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [Text('P'),Text('chart'),Text('Date')],
          ),),
          Container(child: Row(
            children: [Column(),Column(),Column()],
          ),)
        ],
      ),
      ),
    ); }

}
