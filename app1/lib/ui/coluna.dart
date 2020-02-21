import 'package:flutter/material.dart';

class Coluna extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new Text(
            'Frist',
            textDirection: TextDirection.ltr,
            style: new TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w500,
              fontStyle: FontStyle.italic,
            ),
          ),

          //Expanded(child: Text('Olá')),
          // Flexible(child: Text('Olá Outro')),
          // Flexible(child: Text('Eu sou o Goku')),

          new Text(
            'Second',
            textDirection: TextDirection.ltr,
            style: new TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w500,
              fontStyle: FontStyle.italic
            )
          ),

          FlatButton(
            onPressed: () => 'Hello',
            color: Colors.black,
            colorBrightness: Brightness.dark,
            child: Text(
              'PUSH!',
            ),
          ),
        ],
      ),
    );
  }
}