import 'package:equatable/equatable.dart';

class GridDrawerCubitState extends Equatable {
  GridDrawerCubitState({
    this.row = "3",
    this.col = "3",
    List<List<String>?>? matriz,
  }) : matriz = matriz != matriz || matriz == null
            ? _initializeMatriz(int.parse(row!), int.parse(col!))
            : matriz;

  final String? row;
  final String? col;
  final List<List<String>?>? matriz;

  static List<List<String>?>? _initializeMatriz(int rows, int cols) {
    return List.generate(
        rows, (i) => List.filled(cols, '0')); // Inicializa la matriz con '0'
  }

  GridDrawerCubitState copyWith({
    String? row,
    String? col,
    List<List<String>?>? matriz,
  }) {
    // Si se proporciona un nuevo valor para `row` o `col`, inicializa la matriz nuevamente
    return GridDrawerCubitState(
        row: row ?? this.row,
        col: col ?? this.col,
        matriz: (row != null || col != null)
            ? _initializeMatriz(int.tryParse(row ?? this.row!) ?? 3,
                int.tryParse(col ?? this.col!) ?? 3)
            : matriz ?? this.matriz);
  }

  @override
  List<Object?> get props => [row, col, matriz];
}
