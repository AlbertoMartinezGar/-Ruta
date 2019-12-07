// main.dart
import 'package:flutter/material.dart';
import 'pages/home_pages.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  String title = '+Rutas';                         // new
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Image from assets"),
        ),
        body: Image.asset('assets/images/lake.jpg'), //   <-- image
      ),
    );
  }
}