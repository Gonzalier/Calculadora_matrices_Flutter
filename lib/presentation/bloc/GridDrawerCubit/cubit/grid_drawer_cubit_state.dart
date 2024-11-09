part of 'grid_drawer_cubit_cubit.dart';

class GridDrawerCubitState extends Equatable {
  const GridDrawerCubitState({
    this.row = "3",
    this.col = "3",
    this.matrix = const [],
  });

  final String? row;
  final String? col;
  final List<List<String>?>? matrix;

  GridDrawerCubitState copyWith({
    String? row,
    String? col,
    List<List<String>?>? matrix,
  }) {
    return GridDrawerCubitState(
        row: row ?? this.row,
        col: col ?? this.col,
        matrix: matrix ?? this.matrix);
  }

  @override
  List<Object?> get props => [row, col, matrix];
}
