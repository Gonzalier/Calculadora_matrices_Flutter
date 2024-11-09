part of 'grid_drawer_cubit_cubit.dart';

 class GridDrawerCubitState extends Equatable {
  const GridDrawerCubitState({this.row = "3", this.col ="3"});

  final String? row;
  final String? col;

GridDrawerCubitState copyWith(
  {String? row,
  String? col,}
){
  return GridDrawerCubitState(row:row ?? this.row , col:col ?? this.col);
}


  @override
  List<Object?> get props => [row,col];
}

