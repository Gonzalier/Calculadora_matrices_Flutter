import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'grid_drawer_cubit_state.dart';

class GridDrawerCubitCubit extends Cubit<GridDrawerCubitState> {
  GridDrawerCubitCubit() : super(GridDrawerCubitState());

  setRow(String row){
    emit(state.copyWith(row: row));
    print('bloc row${state.row}');
  }

  setCol(String col){
    emit(state.copyWith(col: col));
    print('bloc col${state.col}');
  }

  void updateCellValue(int row, int col, String value) {
    // Actualiza el estado con el nuevo valor de la celda
    // Aquí deberías tener lógica para actualizar la matriz en el estado
  }

}
