import 'package:flutter/material.dart';

void main() {
  //couleur gradient qui va servir pour le text
  final Shader linearGradient = LinearGradient(
    //couleur en hexadecimal
    colors: <Color>[Colors.orangeAccent,Colors.red],
  ).createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 70.0));
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          //Couleur de la barre
          backgroundColor: Colors.blue[500],
          title:
              //Centrer le text dans la barre
              Center(
            child: Text("Je suis pauvre"),
          ),
        ),
        backgroundColor: Colors.white54,
        body: Center(
          child:
          Column(
            children: [
              //Le Texte
              Text(
                "Mon application sur flutter / Dart",
                style: TextStyle(
                    fontSize: 18.0,
                    letterSpacing: 2,
                    height: 05.0,
                    foreground: Paint()..shader = linearGradient),
              ),
              //la partie de l'image
              Container(
                  //La taille de l'image
                  width: 320.0,
                  height: 400.0,
                  alignment: Alignment.center,
                  decoration: new BoxDecoration(
                    //Classe decorationImage
                    image: DecorationImage(
                      //Récupération de l'image a affiché
                      image: AssetImage('images/images.png'),
                    ),
                  )),
              //Fin de la partie de l'image
              //Copyright Thomas palisseau
              Text(
                "Copyright Thomas palisseau",
                style: TextStyle(
                  fontSize: 18.0,
                  letterSpacing: 2,
                  height: 05.0,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
