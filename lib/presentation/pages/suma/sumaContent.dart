import 'package:flutter/material.dart';

class SumaContent extends StatelessWidget {
   SumaContent({required this.m1, required this.m2});
  List<List<String>?>? m1; List<List<String>?>? m2;

   List<List<String>?>? sumaMatrices(
      List<List<String>?>? m1, List<List<String>?>? m2,) {
    List<List<String>?>? matrizResultado;
    List<List<String>?>? matrizAux = List.filled(m1!.length, List.filled(m1[].length, fill));

    for (int i = 0; i < m1!.length; i++) {
      for (int j = 0; j < m1[i]!.length; j++) {
        matrizAux![i]![j] = m1[i]![j] + m2![i]![j];
      }
    }
    matrizResultado = matrizAux;
    return matrizResultado;
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
