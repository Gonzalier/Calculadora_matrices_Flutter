part of 'cell_cubit_cubit.dart';

class CellCubitState extends Equatable {
  const CellCubitState(this.controller);

  final List<List<TextEditingController>> controller;

  CellCubitState copyWith({List<List<TextEditingController>>? controller}) {
    return CellCubitState(controller ?? this.controller);
  }

  @override
  List<Object> get props => [controller];
}
