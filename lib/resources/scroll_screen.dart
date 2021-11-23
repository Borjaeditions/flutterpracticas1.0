import 'package:flutter/material.dart';
import 'package:prueba2/resources/paginaInicio.dart';


class ScrollPage extends StatelessWidget {
  const ScrollPage({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    var boxDecoration = BoxDecoration(

          gradient: LinearGradient( //color degradado
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.5, 0.5], //puntos d equiebre del degradado, mejor control
            colors: [

              Color(0xff5EE8C5),
              Color(0xff30BAD6),
            ]
            
          ),

        );
    return Scaffold(
      body: Container(
        decoration: boxDecoration, //es la variable de arriba ↑
        child: PageView(
          //crea la interacción de paginas de manera horizontal o vertical
          scrollDirection: Axis.vertical, //Axis.Horizontal, por defecto viene en Horizontal
          physics: BouncingScrollPhysics(), //Crea el efecto de volver a cargar, sin utilizar en este proyecto
          children: [

          Page1(),
          Bienvenido(),
          Initialpage()

        ],),
      ),
   );
  }
}

class Bienvenido extends StatelessWidget {
  const Bienvenido({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
    color: Color(0xff30BAD6),
    child: Center(child: 
    TextButton(onPressed: (){},
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 8),
        child: Text("Bienvenidos", style: TextStyle(color: Colors.white, fontSize: 20) ),
      ),
      style: TextButton.styleFrom(

        backgroundColor: Colors.lightBlue,
        shape: const StadiumBorder()

      ),
    ),
      ),  
    );
  }
}

class Page1 extends StatelessWidget {
  const Page1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [

        Positioned(child: Background()),

        Columna(),
        
      ],
    );
  }
}

class Columna extends StatelessWidget {
  const Columna({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var textStyle = TextStyle(color: Colors.white, fontSize: 50);
    return SafeArea(

      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,

        children: [

          Text("11°", style: textStyle,),
          Text("Miércoles", style: textStyle,),
          Expanded(child: Container()),
          Icon(Icons.keyboard_arrow_down, color: Colors.white, size: 100,),


        ],

      ),

    );
  }
}

class Background extends StatelessWidget {
  const Background({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(

      decoration: BoxDecoration(

        image: DecorationImage(image: AssetImage("assets/scroll-1.png"), fit: BoxFit.cover))

      );
  }
}