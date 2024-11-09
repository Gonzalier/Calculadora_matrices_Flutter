import 'package:calculadora_de_matrices_flutter/presentation/bloc/menuPageCubit/menu_page_cubit_cubit.dart';
import 'package:calculadora_de_matrices_flutter/presentation/menuPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Cell extends StatefulWidget {
  final Function(String) onChanged;
  final TextEditingController? controller;

  Cell({super.key, required this.onChanged, this.controller});

  @override
  State<Cell> createState() => _CellState();
}

class _CellState extends State<Cell> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        color: Color(0xffBAE0DD),
        border: Border.all(
          width: 1.4,
          color: Colors.grey,
        ),
        borderRadius: BorderRadius.circular(17),
      ),
      child: TextFormField(
        onChanged: widget.onChanged,
        controller: widget.controller,
        inputFormatters: [
          FilteringTextInputFormatter.digitsOnly,
        ],
        maxLength: 5,
        textAlign: TextAlign.center,
        decoration: InputDecoration(
          //icon: Text("${alphabet[row]}" + "${col}"),
          border: InputBorder.none,
          counterText: "",
        ),
      ),
    );
  }
}
