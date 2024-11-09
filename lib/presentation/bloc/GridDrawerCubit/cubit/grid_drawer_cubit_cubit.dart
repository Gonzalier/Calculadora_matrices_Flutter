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


}
