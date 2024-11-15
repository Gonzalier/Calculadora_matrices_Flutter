import 'package:calculadora_de_matrices_flutter/models/Cell.dart';
import 'package:calculadora_de_matrices_flutter/presentation/bloc/GridDrawerCubit/cubit/grid_drawer_cubit_cubit.dart';
import 'package:calculadora_de_matrices_flutter/presentation/bloc/SumaPageCubit/suma_page_cubit_cubit.dart';
import 'package:calculadora_de_matrices_flutter/presentation/pages/menuPage.dart';
import 'package:calculadora_de_matrices_flutter/presentation/pages/suma/sumaContent.dart';
import 'package:calculadora_de_matrices_flutter/presentation/utils/GridDrawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class sumaPage extends StatefulWidget {
  const sumaPage({super.key});

  @override
  State<sumaPage> createState() => _sumaPageState();
}

class _sumaPageState extends State<sumaPage> {
  final GlobalKey<FormState> m1k = GlobalKey<FormState>();
  final GlobalKey<FormState> m2k = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Suma de matrices'),
        backgroundColor: Colors.blueGrey[400],
        foregroundColor: Colors.white,
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 42, 136, 45),
              Color.fromARGB(255, 147, 248, 199)
            ],
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
          ),
        ),
        child: Column(children: [
          Container(
            margin: const EdgeInsets.only(left: 15),
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.only(top: 20),
            child: const Text(
              "Ingrese el tamaño de la matriz",
              style: TextStyle(fontSize: 25),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(right: 100, top: 50),
            child: const Text(
              "Para sumarse la matris deben tener el mismo tamaño",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 20),
          Row(
            children: [
              Column(
                children: [
                  const Text(
                    "Filas",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Cell(
                    onChanged: (value) {
                      context
                          .read<SumaPageCubit>()
                          .updateMatrizSize(row: value);
                    },
                  ),
                ],
              ),
              const Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "X",
                    style:
                        TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Column(
                children: [
                  const Text(
                    "Columnas",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Cell(
                    onChanged: (value) {
                      context
                          .read<SumaPageCubit>()
                          .updateMatrizSize(col: value);
                    },
                  ),
                ],
              ),
              const Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                ],
              )
            ],
          ),
          Column(
            children: [
              Container(
                alignment: Alignment.bottomCenter,
                height: MediaQuery.of(context).size.height / 4,
                width: MediaQuery.of(context).size.width,
                // color: Colors.white,
                child: BlocProvider(
                  create: (context) => GridDrawerCubitCubit(),
                  child: BlocListener<SumaPageCubit, SumaPageCubitState>(
                    listener: (context, state) {
                      context
                          .read<GridDrawerCubitCubit>()
                          .updateGridSize(row: state.CRow, col: state.CCol);
                    },
                    child: GridDrawer(
                      formKey: m1k,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Container(
                alignment: Alignment.bottomCenter,
                height: MediaQuery.of(context).size.height / 4,
                width: MediaQuery.of(context).size.width,
                // color: Colors.white,
                child: BlocProvider(
                  create: (context) => GridDrawerCubitCubit(),
                  child: BlocListener<SumaPageCubit, SumaPageCubitState>(
                    listener: (context, state) {
                      context
                          .read<GridDrawerCubitCubit>()
                          .updateGridSize(row: state.CRow, col: state.CCol);
                    },
                    child: GridDrawer(
                      formKey: m2k,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 3),
              FloatingActionButton(
                heroTag: "GoSolution",
                onPressed: () {
                },
                child: Icon(Icons.arrow_circle_right_rounded),
              )
            ],
          )
        ]),
      ),
    );
  }
}
