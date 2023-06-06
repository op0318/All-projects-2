import 'package:flutter/material.dart';
import 'package:rolldice_app/Styled test.dart';
import './Gredient.dart';
import 'dart:math';


var startAlignment=Alignment.topLeft;
var endAlignment=Alignment.bottomLeft;

class GreadientContainer extends StatefulWidget {
   GreadientContainer(this.color, {super.key});

  final List<Color> color;



  @override
  State<GreadientContainer> createState() => _GreadientContainerState();
}

class _GreadientContainerState extends State<GreadientContainer> {


  var ActiveImage=Image.asset('Assets/images/dice-1.png');







  void roll_dice()
  {
    var diceroll=Random().nextInt(6)+1;
    Random();
    setState(() {

      ActiveImage=Image.asset('Assets/images/dice-$diceroll.png');

    });
    print('THis is number one');
  }

  @override
  Widget build(BuildContext context) {
    List name=['thirumoorthi','Aravinth','Rocky','Ganesh'];
    endAlignment = Alignment.bottomCenter;
    return Container(child: Center(child:
    Column(mainAxisSize: MainAxisSize.min,
        children: [
          ...name.map((e)
          {
            return Text(e);
          }).toList(),
          ActiveImage,
    SizedBox(height: 20),
    TextButton(style:
    TextButton.styleFrom(foregroundColor: Colors.white,textStyle: TextStyle(fontSize: 25,fontWeight: FontWeight.bold)),
        onPressed: roll_dice, child: Text('Roll-Dice'))])),
      decoration: BoxDecoration(gradient: LinearGradient(colors: widget.color,
          begin: startAlignment,
          end: endAlignment),


      ),
    );
  }
}
