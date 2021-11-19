import 'package:flutter/material.dart';


class ScrollPage extends StatelessWidget {
  const ScrollPage({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [

          Positioned(child: Background()),

          Columna(),
          
        ],
      )
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