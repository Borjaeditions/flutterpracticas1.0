import 'package:flutter/material.dart';
import 'package:prueba2/resources/paginaInicio.dart';
import 'package:prueba2/resources/scroll_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'ScrollScreen',
      routes: {

        'InitialPage': (BuildContext context) => Initialpage(),
        'ScrollScreen': (BuildContext context) => ScrollPage(),
        
      },
    );
  }
}