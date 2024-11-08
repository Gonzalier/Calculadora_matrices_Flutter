import 'package:bloc/bloc.dart';
import 'package:calculadora_de_matrices_flutter/models/Cell.dart';
import 'package:equatable/equatable.dart';

part 'menu_page_cubit_state.dart';

class MenuPageCubit extends Cubit<MenuPageCubitState> {
  MenuPageCubit() : super(MenuPageCubitInitial());

  void updateMatrizSize(String row, String col) {
    emit(MenuPageCubitUpdated(CRow: row, CCol: col));
  }
}
