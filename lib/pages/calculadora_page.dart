import 'package:calculadora_imc_24/calculadora.dart';

import '../components/bottom_button.dart';
import '../components/contador.dart';
import '../components/custom_card.dart';
import '../components/gender_content.dart';
import '../components/modal_result.dart';

import '../components/slider_altura.dart';

import 'package:flutter/material.dart';

class CalculadoraPage extends StatefulWidget {
  const CalculadoraPage({super.key});

  @override
  State<CalculadoraPage> createState() => _CalculadoraPageState();
}

enum Genre {
  masculino,
  feminino,
}

class _CalculadoraPageState extends State<CalculadoraPage> {
  // Definindo variáveis de estado
  Genre? genero;
  int altura = 120;
  int peso = 80;
  int idade = 18;

  // definindo constantes
  final int pesoMinimo = 20;
  final int pesoMaximo = 200;
  final int idadeMinima = 10;
  final int idadeMaxima = 100;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculadora IMC'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        genero = Genre.masculino;
                      });
                    },
                    child: CustomCard(
                      active: genero == Genre.masculino,
                      child: const GenderContent(
                        icon: Icons.male,
                        label: 'Masculino',
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        genero = Genre.feminino;
                      });
                    },
                    child: CustomCard(
                      active: genero == Genre.feminino,
                      child: const GenderContent(
                        icon: Icons.female,
                        label: 'Feminino',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: CustomCard(
              child: SliderAltura(
                altura: altura,
                onChanged: (double value) {
                  setState(() {
                    altura = value.toInt();
                  });
                },
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: CustomCard(
                    child: Contador(
                      label: 'Peso',
                      value: peso,
                      onIncrement: () {
                        if (peso < pesoMaximo) {
                          setState(() {
                            peso++;
                          });
                        }
                      },
                      onDecrement: () {
                        if (peso > pesoMinimo) {
                          setState(() {
                            peso--;
                          });
                        }
                      },
                    ),
                  ),
                ),
                Expanded(
                  child: CustomCard(
                    child: Contador(
                      label: 'Idade',
                      value: idade,
                      onIncrement: () {
                        if (idade < idadeMaxima) {
                          setState(() {
                            idade++;
                          });
                        }
                      },
                      onDecrement: () {
                        if (idade > idadeMinima) {
                          setState(() {
                            idade--;
                          });
                        }
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
          BottomButton(
            buttonTitle: 'Calcular IMC',
            onPressed: () {
              showModalBottomSheet(
                context: context,
                builder: (BuildContext context) {
                  final imc =
                      Calculadora.calcularIMC(peso: peso, altura: altura);
                  final resultado = Calculadora.obterResultado(imc);
                  return ModalResult(
                    imc: imc,
                    resultado: resultado,
                  );
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
