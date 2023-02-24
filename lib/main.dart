


import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}




class DicePage  extends StatefulWidget {
  //const ({Key? key}) : super(key: key);


  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftdicnumb=6;

  int rightdicnumb=6;


  void play (){
    setState(() {
      leftdicnumb=Random().nextInt(6)+1;
      rightdicnumb=Random().nextInt(6)+1;

    });}

@override
Widget build(BuildContext context) {
    return  Center(

        child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children: <Widget>[
           Row(
            children: <Widget>[
              Expanded (
                flex: 1,

               child: TextButton(onPressed: (){
                 play();


               },

                  child: Image.asset('images/dice$leftdicnumb.png') ,



               ),
              ),




                Expanded(
                flex: 1,
                 child: TextButton(onPressed: (){
                   play();
                 },

                  child: ( Image.asset('images/dice$rightdicnumb.png')),
               ),
             ),



              ],
             ),








],
),

);
}
}


