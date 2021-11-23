import 'dart:math';

import 'package:flutter/material.dart';

class BackgroundT extends StatelessWidget {
  const BackgroundT({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    var boxDecoration = BoxDecoration(
        
        // ignore: prefer_const_constructors
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          // ignore: prefer_const_literals_to_create_immutables
          stops: [0.2, 0.8],
          colors: const [

            Color(0xff2E305F),
            Color(0xff202323)

          ]

        ),

      );
    return Stack(
        children: [
          Container(decoration: boxDecoration), //Color degradado, boxDecoration es una variable local
          const Positioned( //cambia la posición del objeto hijo, similar a css con los div
            top: -100,
            left: -30,
            child: _CajaRosa()
          ),         
      ]
    );
  }
}
class _CajaRosa extends StatelessWidget {
  const _CajaRosa({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      
      angle: -pi / 5, //modifica la rotación en base a un angulo dado, trabaja en radianes (Estudiar después o tantearle)
      child: Container( //Los divs de flutter
        width: 360,
        height: 360,
        decoration: BoxDecoration(
    
          //color: Colors.pink, //Si tiene un gradiante ya no necesita la propiedad "color"
          borderRadius: BorderRadius.circular(80),
          gradient: const LinearGradient(
    
            colors: [
    
              Color.fromRGBO(236, 98, 188, 1),
              Color.fromRGBO(241, 142, 172, 1)
    
            ]
    
          )
    
        ),
      ),
    );
  }
}