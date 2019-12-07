// pages/alert.dart
import 'package:flutter/material.dart';
import './map.dart';

class Alert extends StatelessWidget{
    final String title;

  Alert(this.title);

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            constraints: BoxConstraints.expand(
              height: Theme.of(context).textTheme.display1.fontSize * 1.1 + 100,
            ),
            padding: const EdgeInsets.all(8.0),
            color: Colors.black,
            alignment: Alignment.center,
            child: Text('POSICION ACTUAL',
              style: TextStyle(
                fontStyle: FontStyle.normal,
                color: Colors.white,
                fontSize: 25,
                fontFamily: 'Berlin Sans FB'
              )
            ),
          ),
          Container(
            color: Colors.orangeAccent,
            alignment: Alignment.center,
            height: ((MediaQuery.of(context).size.height)/3) - 50,
            child: Container(
              color: Colors.black,
              alignment: Alignment.center,
              height: ((MediaQuery.of(context).size.height)/5),
              child: Text(
                'CAMBIO DE RUTA',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.orangeAccent,
                ),
              )
            )
          ),

          Container(
           constraints: BoxConstraints.expand(
              height: Theme.of(context).textTheme.display1.fontSize * 1.1 + 150.0,
            ),
            padding: const EdgeInsets.all(10.0),
            color: Colors.black,
            alignment: Alignment.center,
            child: FloatingActionButton.extended(
                onPressed: (){
                  Navigator.push(context, 
                  MaterialPageRoute(builder: (context) => Map())
                  );
                },
                
                label: Text('Confirmar'),
                icon: Icon(Icons.add_alert),
                backgroundColor: Colors.orangeAccent,
            )
          ),

          Container(
            color: Colors.black,
            alignment: Alignment.center,
            height: (MediaQuery.of(context).size.height)/5,
            
            child: Text('SI EL CAMBIO DE RUTA NO SE CONFIRMA DURANTE EL LAPSO DE TIEMPO PREESTABLECIDO, SE REPORTARÁ COMO INCIDENTE EN ESTA LOCALIZACIÓN',
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 10,
                color: Colors.white, 
              ),
            ),
          )
        ],
      ), 
    );
    
  }

}