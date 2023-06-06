import 'package:flutter/material.dart';
import 'package:sql_conn/sql_conn.dart';


class Mssqlconnection extends StatefulWidget {
  const Mssqlconnection({Key? key}) : super(key: key);

  @override
  State<Mssqlconnection> createState() => _MssqlconnectionState();
}

class _MssqlconnectionState extends State<Mssqlconnection> {
  Future<void>connect(BuildContext ctx)async{
    debugPrint('connecting');
    try
        {
          SqlConn.connect(
              ip: '192.168.1.88',
              port: '1433',
              databaseName: 'postmantesting',
              username: 'thirumoorthi',
              password: '8072445646');
          debugPrint('connected');

        }
        catch(e)
    {
      debugPrint(e.toString());
    }

  }



  @override
  Widget build(BuildContext context) {
    Future<void> read(String query) async {
      var res = await SqlConn.readData(query);
      debugPrint(res.toString());
    }

    Future<void> write(String query) async {
      var res = await SqlConn.writeData(query);
      debugPrint(res.toString());
    }

    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            children: [

              ElevatedButton(onPressed: (){write("insert into employeedetails values(10802,'devi','Flutter','software trainee')");}, child:Text('Insert')),
              ElevatedButton(onPressed: (){connect(context);},child: Text('connect!'),),
              ElevatedButton(onPressed: (){read("select * from employeedetails");}, child: Text('Read data'))
            ],
          ),
        ),
      ),
    );
  }
}

class test extends StatefulWidget {
  const test({Key? key}) : super(key: key);

  @override
  State<test> createState() => _testState();
}

class _testState extends State<test> {

  @override


  Widget build(BuildContext context) {
    var height=MediaQuery.of(context).size.height;
    var width=MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: height*0.10,
            width: width/1.6,
            color: Colors.red,),




        ],
      ),
    );
  }
}

