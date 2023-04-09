import 'package:calculadora_imc/constants.dart';
import 'package:calculadora_imc/pages/calculadora_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const CalculadoraIMC());
}

class CalculadoraIMC extends StatelessWidget {
  const CalculadoraIMC({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        primaryColor: kBackgroundColor,
        scaffoldBackgroundColor: kBackgroundColor,
        appBarTheme: const AppBarTheme()
            .copyWith(backgroundColor: kBackgroundColor, centerTitle: true),
      ),
      home: CalculadoraPage(),
    );
  }
}
