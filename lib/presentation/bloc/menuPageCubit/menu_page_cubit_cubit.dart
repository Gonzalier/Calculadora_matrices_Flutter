import 'package:bloc/bloc.dart';
import 'package:calculadora_de_matrices_flutter/models/Cell.dart';
import 'package:equatable/equatable.dart';

part 'menu_page_cubit_state.dart';

class MenuPageCubit extends Cubit<MenuPageCubitState> {
  MenuPageCubit() : super(MenuPageCubitState());

  void updateMatrizSize({String? row, String? col}) {
    emit(state.copyWith(CCol: col, CRow: row));
  }
}
