// pages/home_page.dart
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final String title;

  HomePage(this.title);

  @override
  Widget build(BuildContext context) {
    return new Column(
        children: <Widget>[
          Container(
            constraints: BoxConstraints.expand(
              height: Theme.of(context).textTheme.display1.fontSize * 1.1 + 500.0,
            ),
            padding: const EdgeInsets.all(8.0),
            color: Colors.black,
            alignment: Alignment.center,
            child: Text('+Rutas',
              style: TextStyle(
                fontStyle: FontStyle.italic,
                color: Colors.white,
                fontSize: 40,
                )
            ),
          )
        ],
    );
    /*return new Scaffold(
      appBar: new AppBar(
        title: new Text(this.title),
      ),
			body: new Container(
        child: new Center(
          child: new Column(
            //mainAxisAlignment is an argument for Column, Row and other
            // layout widgets. It does what CSS's 'justify-content' does
            mainAxisAlignment: MainAxisAlignment.center,
            // If you recall, Column is a layout widget that
            // expects a List who's data is of type Widget:
            children: <Widget>[
              new Text(
                'You have pushed the button this many times:',
              ),
              new Text('0'),
            ],
          ),
        ),
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: () => print('PRESSED!'),
        child: new Icon(Icons.add),
      ),
    );*/
  }
}