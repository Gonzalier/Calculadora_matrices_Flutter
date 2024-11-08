part of 'menu_page_cubit_cubit.dart';

sealed class MenuPageCubitState extends Equatable {
  const MenuPageCubitState();

  @override
  List<Object> get props => [];
}

final class MenuPageCubitInitial extends MenuPageCubitState {}

final class MenuPageCubitUpdated extends MenuPageCubitState {
  final String CRow;
  final String CCol;

  const MenuPageCubitUpdated(this.CRow, this.CCol);

  copiWith({
    String? CRow,
    String? CCol,
  }) {
    CRow = CRow ?? this.CRow;
    CCol = CCol ?? this.CCol;
  }

  @override
  List<Object> get props => [CRow, CCol];
}
