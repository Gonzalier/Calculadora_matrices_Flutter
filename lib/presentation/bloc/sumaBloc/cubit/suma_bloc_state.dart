part of 'suma_bloc_cubit.dart';

 class SumaBlocState extends Equatable {
  const SumaBlocState({this.m1, this.m2});
  final List<List<String>?>? m1;
  final List<List<String>?>? m2;

  SumaBlocState copyWith(
     final List<List<String>?>? m1,
      final List<List<String>?>? m2,
  ){
    return SumaBlocState(m1: m1 ?? this.m1, m2: m2 ?? this.m2,);
  }

  @override
  List<Object?> get props => [m1, m2];
}

