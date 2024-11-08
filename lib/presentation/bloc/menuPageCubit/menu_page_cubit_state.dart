part of 'menu_page_cubit_cubit.dart';

class MenuPageCubitState extends Equatable {
  final String? CRow;
  final String? CCol;

  const MenuPageCubitState({this.CRow, this.CCol});

  MenuPageCubitState copyWith({
    String? CRow,
    String? CCol,
  }) {
    return MenuPageCubitState(
      CRow: CRow ?? this.CRow,
      CCol: CCol ?? this.CCol,
    );
  }

  @override
  List<Object?> get props => [CRow, CCol];
}
