// main.dart
import 'package:flutter/material.dart';
import 'pages/home_pages.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  String title = '+Rutas';                         // new
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(                             // updated
        title: title,                                   // new
        home: new HomePage(title),                      // new
    );
  }
}