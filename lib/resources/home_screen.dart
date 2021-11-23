import 'package:flutter/material.dart';
import 'package:prueba2/widgets/background.dart';


class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Stack(

        children: [

          BackgroundT(),

        ],

      ),
   );
  }
}