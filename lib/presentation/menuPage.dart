import 'package:calculadora_de_matrices_flutter/presentation/sumaPage.dart';
import 'package:flutter/material.dart';

class menuPage extends StatelessWidget {
  const menuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          ListTile(
            title: Text("Suma de matrices"),
            onTap: () {
              Navigator.pushNamed(context, "sumaPage");
            },
          ),
          ListTile(
            title: Text("Resta de matrices"),
          ),
          ListTile(
            title: Text("Multiplicacion de matrices"),
          ),
          ListTile(
            title: Text("Matriz transpuesta"),
          ),
          ListTile(
            title: Text("Determinante de una Matriz 3x3"),
          ),
          ListTile(
            title: Text("Matriz adjunta"),
          ),
          ListTile(
            title: Text("Matriz inversa"),
          ),
          ListTile(
            title: Text("Escalar de una matriz"),
          ),
          ListTile(
            title: Text("SALIR"),
          ),
        ],
      ),
    );
  }
}
