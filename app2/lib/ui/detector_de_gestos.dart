import 'package:flutter/material.dart';

class DetectorGestos extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(

      appBar: AppBar(
        
        title: Text('Detector'),

        backgroundColor: Colors.black87,

      ),
  
      body: Center(

        child: MeuBotao(),

      ),

    );
  
  }

}

class MeuBotao extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
  
    return GestureDetector(

      onTap: () {
        
        final snackBar = SnackBar(content: Text(''));  
        
        Scaffold.of(context).showSnackBar(snackBar);
      
      },

      child: Container(
        
        padding: EdgeInsets.all(12),
        
        decoration: BoxDecoration(

          color: Colors.deepPurpleAccent,

          borderRadius: BorderRadius.circular(5.5),

        ),

        child: Text('Meu botão'),

      ),

    );
  
  }

}
