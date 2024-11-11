part of 'menu_page_cubit_cubit.dart';

class MenuPageCubitState extends Equatable {
  final String? CRow;
  final String? CCol;

  const MenuPageCubitState({
    this.CRow = '3',
    this.CCol = '3',
  });

  MenuPageCubitState copyWith({
    String? CRow,
    String? CCol,
    final List<List<String>?>? matriz,
  }) {
    return MenuPageCubitState(
      CRow: CRow ?? this.CRow,
      CCol: CCol ?? this.CCol,
    );
  }

  @override
  List<Object?> get props => [
        CRow,
        CCol,
      ];
}
