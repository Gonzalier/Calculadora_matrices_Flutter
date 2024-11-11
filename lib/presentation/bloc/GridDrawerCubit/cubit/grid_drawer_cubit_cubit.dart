import 'package:bloc/bloc.dart';
import 'package:calculadora_de_matrices_flutter/presentation/bloc/GridDrawerCubit/cubit/grid_drawer_cubit_state.dart';

class GridDrawerCubitCubit extends Cubit<GridDrawerCubitState> {
  GridDrawerCubitCubit() : super(GridDrawerCubitState());

  setRow(String row) {
    emit(state.copyWith(row: row));
    print('bloc row${state.row}');
  }

  setCol(String col) {
    emit(state.copyWith(col: col));
    print('bloc col${state.col}');
  }

  void SetCellValues(String row, String col, String value) {}

  void SetNewMatriz(List<List<String>?>? matriz) {
    emit(state.copyWith(matriz: matriz));
    print("${state.matriz}");
  }
}
