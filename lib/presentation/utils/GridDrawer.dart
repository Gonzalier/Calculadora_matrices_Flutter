import 'package:calculadora_de_matrices_flutter/models/Cell.dart';
import 'package:flutter/material.dart';

class GridDrawer extends StatelessWidget {
  GridDrawer({
    super.key,
    required this.row,
    required this.col,
  });

  final int row;
  final int col;

  @override
  Widget build(BuildContext context) {
    List<List<TextEditingController>> controllers = List.generate(
      row,
      (_) => List.generate(col, (_) => TextEditingController()),
    );
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        final double cellSize = (constraints.maxWidth / col).clamp(0,
            constraints.maxHeight / row); // clamp to prevent division by zero
        return Container(
          alignment: Alignment.bottomCenter,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(row, (rowIndex) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(col, (colIndex) {
                  return Container(
                    padding: EdgeInsets.all(1),
                    child: Cell(
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
  }
}
