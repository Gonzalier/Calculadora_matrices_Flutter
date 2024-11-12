import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'suma_page_cubit_state.dart';

class SumaPageCubit extends Cubit<SumaPageCubitState> {
  SumaPageCubit() : super(const SumaPageCubitState());

  void updateMatrizSize({String? row, String? col}) {
    emit(state.copyWith(CCol: col, CRow: row));
  }
}
