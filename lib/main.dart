import 'package:calculadora_imc/constants.dart';
import 'package:calculadora_imc/pages/cadastro_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const CalculadoraIMC());
}

class CalculadoraIMC extends StatelessWidget {
  const CalculadoraIMC({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: kBackgroundColor,
        scaffoldBackgroundColor: kBackgroundColor,
        appBarTheme: AppBarTheme().copyWith(
          backgroundColor: kBackgroundColor,
        ),
      ),
      home: CadastroPage(),
    );
  }
}
