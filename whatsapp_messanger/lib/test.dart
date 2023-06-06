
import 'package:flutter/material.dart';

class test extends StatelessWidget {
  const test({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Column(
        children: [Text("Hello welcome to the world!"),
        Text('This is the new branch '),
        Text('The branch name is mypractice'),
        Text('the new branch added!'),
        Text('hii i am thiru')],
      )),
    );
  }
}
