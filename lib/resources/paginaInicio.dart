import 'package:flutter/material.dart';


class Initialpage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [

        Image(image: AssetImage("assets/cofre.jpg")),

        Info(),

        Referencia(),

        Textos()

        ],
      )
     );
  }
}

class Textos extends StatelessWidget {
  const Textos({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 30),

      child: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque nulla nulla, porttitor vel tincidunt ac, tempor et odio. Morbi aliquam metus pharetra, feugiat metus vitae, bibendum quam. Nam ullamcorper, velit ut tempus iaculis, ante leo faucibus lectus, at consectetur lectus lorem eu nulla. Vivamus eu eleifend dolor, ut maximus magna. Phasellus interdum erat in quam mattis hendrerit. Cras suscipit a sapien vel semper. Aenean blandit eros vel enim euismod porta. Curabitur at ante luctus, volutpat nibh sed, ornare diam. Fusce varius hendrerit eros et ultrices. Vivamus a nisi in neque tempor molestie. Nam nunc libero, ullamcorper eget tempus ut, dapibus faucibus ante. Curabitur tempor placerat metus, a dictum lacus egestas ornare. \n\n Nunc a enim ipsum. Aliquam dui quam, vulputate fermentum nisi et, consequat varius nunc. Aliquam dapibus dapibus sodales. Sed vitae sapien a sem eleifend volutpat. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Phasellus ut ex nunc. Sed ultrices augue massa, ac lacinia purus dapibus nec. Vestibulum facilisis justo ex, id malesuada leo facilisis nec. Aenean iaculis non lectus vel pellentesque. Nunc auctor velit id sem condimentum, sed ornare massa bibendum. Nunc nunc urna, cursus sit amet nisi vitae, luctus dignissim lorem. Vivamus condimentum placerat convallis. Pellentesque a metus tortor.", style: TextStyle(fontSize: 16),),

    );
  }
}

class Info extends StatelessWidget {
  const Info({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20, horizontal: 30),

      child: Row(
        children: [

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Text("Cofre de Perote", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
              Text("En lo más inospito de Perote York", style: TextStyle(color: Colors.black45, fontSize: 15))
            ],

          ),
          Expanded(child: Container()),

          IconButton(onPressed: (){}, icon: Icon(Icons.star), color: Colors.red,),
          Text("41")
        ],
      ),

    );
  }
}

class Referencia extends StatelessWidget {
  const Referencia({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [

          IconosT(icon: Icons.call, text: "Llamar"),
          IconosT(icon: Icons.map, text: "Rutas"),
          IconosT(icon: Icons.share, text: "Compartir"),

        ],
      ),

    );
  }
}

class IconosT extends StatelessWidget {

  final IconData icon;
  final String text;

  const IconosT({
    Key? key, required this.icon, required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        IconButton(onPressed: (){}, icon: Icon(this.icon), color: Colors.blue,),
        Text(this.text, style: TextStyle(color: Colors.blue)),

      ],
    );
  }
}