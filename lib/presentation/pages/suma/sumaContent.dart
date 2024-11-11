import 'package:flutter/material.dart';

class SumaContent extends StatelessWidget {
  const SumaContent();

  static List<List<String>?>? sumaMatrices(
      List<List<String>?>? m1, List<List<String>?>? m2) {
    List<List<String>?>? matrizResultado;
    List<List<String>?>? matrizAux = m1;

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
