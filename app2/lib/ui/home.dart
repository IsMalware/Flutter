import 'package:flutter/material.dart';

class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    botaoFlutuante() => debugPrint('Botão Flutuante');
    
    return Scaffold(

      appBar: AppBar(

        title: Text('Hello World'),

        backgroundColor: Colors.orangeAccent,

        actions: <Widget>[

          IconButton(
          
            icon: Icon(Icons.accessible),
          
            onPressed: () => debugPrint('Acessibilidade')
          
          ),

          IconButton(
            
            icon: Icon(Icons.access_alarms),
            
            onPressed: () => debugPrint('Alarme!!'),
          
          ),

          IconButton(
          
            icon: Icon(Icons.print),
          
            onPressed: () => debugPrint('Printando')
          
          ),

          IconButton(
          
            icon: Icon(Icons.zoom_in), onPressed: () => debugPrint('Dando zoom')
          
          ),

        ],

      ),

      backgroundColor: Colors.white,
      
      body: Container(
        
        alignment: Alignment.center,
        
        child: Column(
          
          mainAxisAlignment: MainAxisAlignment.center,
          
          children: <Widget>[

            Text('Bone',

              style: TextStyle(
                
                fontSize: 19.5,
                
                fontWeight: FontWeight.w700,
                
                color: Colors.deepOrangeAccent

              ),
               
            ),
            
            Padding(padding: EdgeInsets.all(15),
            
              child: InkWell(

                child: Text('Click!',
                
                style: TextStyle(

                  fontSize: 16

                ),

                ),

                onTap: () => debugPrint('Tap'),
                onLongPress: () => debugPrint('Long press'),

              ),

            )

          ],
        
        ),
      
      ),

      bottomNavigationBar: BottomNavigationBar(
        
        items: [ 
          
          BottomNavigationBarItem(
            
            icon: Icon(Icons.access_alarm),
          
            title: Text('Perfil')
        
          ),

          BottomNavigationBarItem(icon: Icon(Icons.print),

            title: Text('Print'),
          
          ),

        ],

      ),

      floatingActionButton: FloatingActionButton(
        
        onPressed: botaoFlutuante,

        child: Icon(Icons.add),

        backgroundColor: Colors.orangeAccent,

      ),

    );

  }

}
