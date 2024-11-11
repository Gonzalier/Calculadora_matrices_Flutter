import 'package:calculadora_de_matrices_flutter/models/Cell.dart';
import 'package:calculadora_de_matrices_flutter/presentation/bloc/GridDrawerCubit/cubit/grid_drawer_cubit_cubit.dart';
import 'package:calculadora_de_matrices_flutter/presentation/bloc/GridDrawerCubit/cubit/grid_drawer_cubit_state.dart';
import 'package:calculadora_de_matrices_flutter/presentation/pages/suma/sumaContent.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GridDrawer extends StatelessWidget {
  GridDrawer({required this.formKey, this.child});
  final GlobalKey<FormState> formKey;

  Widget? child;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GridDrawerCubitCubit, GridDrawerCubitState>(
      builder: (context, state) {
        return LayoutBuilder(
          builder: (context, BoxConstraints constraints) {
            final row = int.tryParse(state.row!) ?? 3;
            final col = int.tryParse(state.col!) ?? 3;
            final double cellSize = (constraints.maxWidth / col)
                .clamp(0, constraints.maxHeight / row);

            List<List<String>?>? matrizAux = copyMatriz(state.matriz);

            return Form(
              key: formKey,
              child: Container(
                alignment: Alignment.bottomCenter,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:
                      List.generate(int.tryParse(state.row!) ?? 3, (rowIndex) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(int.tryParse(state.col!) ?? 3,
                          (colIndex) {
                        return Container(
                          width: cellSize,
                          height: cellSize,
                          padding: EdgeInsets.all(1),
                          child: Cell(
                            onChanged: (value) {
                              if (value != "") {
                                matrizAux![rowIndex]![colIndex] = value;
                                context
                                    .read<GridDrawerCubitCubit>()
                                    .SetNewMatriz(matrizAux);
                              } else {
                                value = "3"; // default value
                                matrizAux![rowIndex]![colIndex] = value;
                                context
                                    .read<GridDrawerCubitCubit>()
                                    .SetNewMatriz(matrizAux);
                              }
                            },
                          ),
                        );
                      }),
                    );
                  }),
                ),
              ),
            );
          },
        );
      },
    );
  }

  List<List<String>?>? copyMatriz(List<List<String>?>? matrizO) {
    List<List<String>?>? matrizAux = List.generate(
        matrizO!.length, (i) => List<String>.filled(matrizO[i]!.length, "0"));

    for (int i = 0; i < matrizO.length; i++) {
      for (int j = 0; j < matrizO[i]!.length; j++) {
        matrizAux[i]![j] = matrizO[i]![j];
      }
    }
    return matrizAux;
  }
}
