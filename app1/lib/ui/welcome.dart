import 'package:flutter/material.dart';

class Bemvindo extends StatelessWidget{  
  @override
  Widget build(BuildContext context) => new Material(
    color: Colors.yellow,
    child: new Center(
      child: new Text( 
        'Hello World',
        textDirection: TextDirection.ltr,
        style: new TextStyle(
          fontSize: 50,
          fontWeight: FontWeight.w800, 
        ),
      ),
    ),
  );
}