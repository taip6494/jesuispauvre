import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            //Couleur de la barre
            backgroundColor: Colors.blue[500],
            title:
                //Centrer le text dans la barre
                Center(
              child: Text("Je suis pauvre mdr"),
            ),
          ),
          backgroundColor: Colors.blue[200],
          body: Center(
              child: Column(children: [
            Text(
              "Aidez moi je suis pauvre svp",
              style: TextStyle( height: 5,fontSize: 25),
            ),
            Image(image: AssetImage("images/images.png")),
          ]))),
    ),
  );
}
