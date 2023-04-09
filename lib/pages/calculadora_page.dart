import 'package:calculadora_imc/components/bottom_button.dart';
import 'package:calculadora_imc/components/custom_card.dart';
import 'package:calculadora_imc/components/icon_content.dart';
import 'package:calculadora_imc/components/roundicon_button.dart';
import 'package:calculadora_imc/constants.dart';
import 'package:flutter/material.dart';

import '../components/slider_altura.dart';

class CalculadoraPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculadora IMC'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: CustomCard(
                    child: const IconContent(
                      icon: Icons.male,
                      label: 'Masculino',
                    ),
                  ),
                ),
                Expanded(
                  child: CustomCard(
                    child: const IconContent(
                      icon: Icons.female,
                      label: 'Feminino',
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: CustomCard(
              child: SliderAltura(),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: CustomCard(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'IDADE',
                          style: kLabelTextStyle,
                        ),
                        const Text(
                          '0',
                          style: kNumberTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            RoundIconButton(
                              icon: Icons.add,
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            RoundIconButton(
                              icon: Icons.remove,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: CustomCard(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'PESO',
                          style: kLabelTextStyle,
                        ),
                        const Text(
                          '0',
                          style: kNumberTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            RoundIconButton(
                              icon: Icons.add,
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            RoundIconButton(
                              icon: Icons.remove,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          const BottomButton(buttonTitle: 'Calcular IMC')
        ],
      ),
    );
  }
}
