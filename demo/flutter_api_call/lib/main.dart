import 'package:flutter/material.dart';
import 'package:http/http.dart' as HTTP;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home:MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
 String? responsebody;

  Future apicall()async
  {
    HTTP.Response response;
    response=await HTTP.get(Uri.parse("https://reqres.in/api/users"));
if(response.statusCode==200)
  {
    print(response.runtimeType);
    setState(() {
      responsebody=response.body;
    });


  }else
    {
      print("no response check the connection and try again!");
    }

  }

@override
  void initState() {
    apicall();
    // TODO: implement initState
    super.initState();
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(


      ),
      body: Center(
        child: Container(
          height: MediaQuery.of(context).size.height*0.8,
          width:MediaQuery.of(context).size.width*0.8,
          color: Colors.red,
          child: Text(responsebody.toString(),
          style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25)),
        ),
      )
   ,
    );
  }
}
