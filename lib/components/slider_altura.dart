import 'package:calculadora_imc/constants.dart';
import 'package:flutter/material.dart';

class SliderAltura extends StatelessWidget {
  final int altura;
  final void Function(double) onChanged;

  const SliderAltura(
      {super.key, required this.altura, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'ALTURA',
          style: kLabelTextStyle,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.baseline,
          textBaseline: TextBaseline.alphabetic,
          children: <Widget>[
            Text(
              altura.toString(),
              style: kNumberTextStyle,
            ),
            Text(
              'cm',
              style: kLabelTextStyle,
            ),
          ],
        ),
        Slider(
          value: altura.toDouble(),
          min: 120,
          max: 220,
          onChanged: onChanged,
        )
      ],
    );
  }
}
