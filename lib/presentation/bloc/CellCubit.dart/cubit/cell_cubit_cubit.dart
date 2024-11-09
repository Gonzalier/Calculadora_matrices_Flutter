import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'cell_cubit_state.dart';

class CellCubitCubit extends Cubit<CellCubitState> {
  CellCubitCubit() : super(CellCubitState());
}
