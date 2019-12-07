// pages/home_page.dart
import 'package:flutter/material.dart';
import './map.dart';

class HomePage extends StatelessWidget {
  final String title;

  HomePage(this.title);

  @override
  Widget build(BuildContext context) {
    
    return new GestureDetector(
        onTap: (){
          Navigator.push(context, 
            MaterialPageRoute(builder: (context) => Map())
          );
        },
        child: new Container(
          child: Column(
            children: <Widget>[
              Container(
              constraints: BoxConstraints.expand(
                height: Theme.of(context).textTheme.display1.fontSize * 1.1 + 400.0,
              ),
              padding: const EdgeInsets.all(8.0),
              color: Colors.black,
              alignment: Alignment.center,
              child: Text('+RUTAS',
                style: TextStyle(
                  fontStyle: FontStyle.normal,
                  color: Colors.white,
                  fontSize: 40,
                  fontFamily: 'Berlin Sans FB'
                  )
              ),
            ),

          Container(
            constraints: BoxConstraints.expand(
              height: Theme.of(context).textTheme.display1.fontSize * 1.1,
            ),
            padding: const EdgeInsets.all(8.0),
            color: Colors.black,
            alignment: Alignment.center,
            child: Text('TOCA PARA COMENZAR',
              style: TextStyle(
                fontStyle: FontStyle.normal,
                color: Colors.white,
                fontSize: 15,
                fontFamily: 'Berlin Sans FB'
                )
            ),
          )
        ],
          ),
          
        ),
        
        
    );
    
  }

}