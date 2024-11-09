import 'package:calculadora_de_matrices_flutter/models/Cell.dart';
import 'package:calculadora_de_matrices_flutter/presentation/bloc/GridDrawerCubit/cubit/grid_drawer_cubit_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GridDrawer extends StatelessWidget {
  GridDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GridDrawerCubitCubit, GridDrawerCubitState>(
      builder: (context, state) {
        return LayoutBuilder(
          builder: (context, BoxConstraints constraints) {
            final row = int.tryParse(state.row!) ?? 3;
            final col = int.tryParse(state.col!) ?? 3;

            List<List<TextEditingController>> controllers = List.generate(
              row,
              (_) => List.generate(col, (_) => TextEditingController()),
            );

            final double cellSize = (constraints.maxWidth / col)
                .clamp(0, constraints.maxHeight / row);

            // clamp to prevent division by zero
            return Container(
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
                          controller: controllers[rowIndex][colIndex],
                          onChanged: (value) {},
                        ),
                      );
                    }),
                  );
                }),
              ),
            );
          },
        );
      },
    );
  }
}
