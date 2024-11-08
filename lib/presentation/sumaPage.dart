import 'package:calculadora_de_matrices_flutter/models/Cell.dart';
import 'package:calculadora_de_matrices_flutter/presentation/bloc/menuPageCubit/menu_page_cubit_cubit.dart';
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
  //final TextEditingController _controllerRow = TextEditingController();
  //final TextEditingController _controllerCol = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MenuPageCubit(),
      child: Scaffold(
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
              padding: const EdgeInsets.only(top: 70),
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
                            .read<MenuPageCubit>()
                            .updateMatrizSize(row: value);
                        print(value);
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
                            .read<MenuPageCubit>()
                            .updateMatrizSize(col: value);
                        print(value);
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
                  color: Colors.white,
                ),
                const SizedBox(height: 20),
                Container(
                  alignment: Alignment.bottomCenter,
                  height: MediaQuery.of(context).size.height / 4,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.white,
                ),
                const SizedBox(height: 3),
                FloatingActionButton(
                  heroTag: "GoSolution",
                  onPressed: () {
                    print(
                        "${context.read<MenuPageCubit>().state.CCol} ${context.read<MenuPageCubit>().state.CRow}");
                  },
                  child: Icon(Icons.arrow_circle_right_rounded),
                )
              ],
            )
          ]),
        ),
      ),
    );
  }
}
