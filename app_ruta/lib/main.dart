// main.dart
import 'package:flutter/material.dart';
import 'pages/home_pages.dart';
import 'pages/successfull.dart';
import 'pages/alert.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  String title = '+Rutas';                         // new
  @override
  Widget build(BuildContext context) {
<<<<<<< HEAD
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Image from assets"),
        ),
        body: Image.asset('assets/images/lake.jpg'), //   <-- image
      ),
=======
    return new MaterialApp(                             // updated
        title: title,                                   // new
        //home: new HomePage(title),                      // new
        //home: new Complete(title), 
        home: new Alert(title),
>>>>>>> master
    );
  }
}