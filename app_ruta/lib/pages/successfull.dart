// pages/succesfull.dart
import 'package:flutter/material.dart';
import './map.dart';

class Complete extends StatelessWidget {

  Complete();

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            constraints: BoxConstraints.expand(
              height: Theme.of(context).textTheme.display1.fontSize * 1.1 + 200.0,
            ),
            padding: const EdgeInsets.all(8.0),
            color: Colors.black,
            alignment: Alignment.centerLeft,
            child: Text('RUTA COMPLETADA CON EXITO',
              style: TextStyle(
                fontStyle: FontStyle.normal,
                color: Colors.white,
                fontSize: 40,
                fontFamily: 'Berlin Sans FB'
              )
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.black,
              height: MediaQuery.of(context).size.height - (((MediaQuery.of(context).size.height)/3)*2),
            ),
          ),

          Container(
           constraints: BoxConstraints.expand(
              height: Theme.of(context).textTheme.display1.fontSize * 1.1 + 50.0,
            ),
            padding: const EdgeInsets.all(8.0),
            color: Colors.black,
            alignment: Alignment.centerLeft,
            child: FloatingActionButton.extended(
                onPressed: (){
                  Navigator.push(context, 
                  MaterialPageRoute(builder: (context) => Map())
                  );
                },
                
                label: Text('Finalizar'),
                icon: Icon(Icons.thumb_up),
                backgroundColor: Colors.orangeAccent,
            )
          ),
        ],
      ), 
    );
    
  }

}