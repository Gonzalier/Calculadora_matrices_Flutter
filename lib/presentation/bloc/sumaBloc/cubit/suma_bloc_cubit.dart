import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'suma_bloc_state.dart';

class SumaBlocCubit extends Cubit<SumaBlocState> {
  SumaBlocCubit() : super(const SumaBlocState());


  setMatrices(List<List<String>?>? m1,  final List<List<String>?>? m2){
    emit(state.copyWith(m1, m2));
  }

}


