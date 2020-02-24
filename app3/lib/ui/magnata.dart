import 'package:flutter/material.dart';

class Magnata extends StatefulWidget{
  @override
  _MagnataState createState() => _MagnataState();
}

class _MagnataState extends State<Magnata>{
  int _grana = 0;

  void _maisGrana(){
    // O setState é o responsável pelo atualização na tela.
    setState(() {
      _grana += 1000;
    });
  }

  void _zerarGrana(){
    setState(() {
      _grana = 0;
    });
  }
  
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Magnata'),
        backgroundColor: Colors.lightGreen,
      ),
      body: Container(
        color: Colors.black12,
        child: Column(
          children: <Widget>[
            Center(
              child: Text('Meu dinheiro:',
                style: TextStyle(
                  color: Colors.lightGreen,
                  fontWeight: FontWeight.w400,
                  fontSize: 29.9
                ),
              ),
            ),
            Expanded(
              child: Center(
                child: Text("\$$_grana",
                  style: TextStyle(
                    fontSize: 45.6,
                    color: _grana >= 10000 ? Colors.black87 : Colors.green,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Center(
                child: FlatButton(
                  onPressed: () => _maisGrana(),
                  child: Text('Mais Grana!!',
                    style: TextStyle(
                      fontSize: 19.9,
                    ),
                  ),
                  color: Colors.lightGreen,
                  textColor: Colors.white70,
                  padding: EdgeInsets.all(10),
                ),
              ),
            ),
            Center(
              child: FlatButton(
                  color: Colors.yellow,
                  onPressed: () => _zerarGrana(), 
                  child: Text('ZERAR :(',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  padding: EdgeInsets.all(10),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
