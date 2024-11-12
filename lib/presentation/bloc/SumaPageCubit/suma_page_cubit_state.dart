part of 'suma_page_cubit_cubit.dart';

class SumaPageCubitState extends Equatable {
  final String? CRow;
  final String? CCol;

  const SumaPageCubitState({
    this.CRow = '3',
    this.CCol = '3',
  });

  SumaPageCubitState copyWith({
    String? CRow,
    String? CCol,
    final List<List<String>?>? matriz,
  }) {
    return SumaPageCubitState(
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
