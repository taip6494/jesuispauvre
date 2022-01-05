import 'package:flutter/material.dart';

void main() {
  //couleur gradient qui va servir pour le text
  final Shader linearGradient = LinearGradient(
    colors: <Color>[Colors.orangeAccent,Colors.red],
  ).createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 70.0));
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue[500],
          title:
              Center(
            child: Text("Je suis pauvre"),
          ),
        ),
        backgroundColor: Colors.white54,
        body: Center(
          child:
          Column(
            children: [
              Text(
                "Mon application sur flutter / Dart",
                style: TextStyle(
                    fontSize: 18.0,
                    letterSpacing: 2,
                    height: 05.0,
                    foreground: Paint()..shader = linearGradient),
              ),
              Container(
                  width: 200.0,
                  height: 300.0,
                  alignment: Alignment.center,
                  decoration: new BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('images/images.png'),
                    ),
                  )),
              Text(
                "Copyright Thomas palisseau",
                style: TextStyle(
                  fontSize: 18.0,
                  letterSpacing: 2,
                  height: 05.0,
                  color: Colors.white,
                ),
              ),
              Text(
                "Email: Palisseau@protonmail.com",
                style: TextStyle(
                  fontSize: 18.0,
                  letterSpacing: 2,
                  height: 05.0,
                  color: Colors.white,
                ),
              ),
              Text(
                "Git: Taip6494",
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
