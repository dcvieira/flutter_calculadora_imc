import '../constants.dart';
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
        const Text(
          'ALTURA',
          style: labelTextStyle,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.baseline,
          textBaseline: TextBaseline.alphabetic,
          children: <Widget>[
            Text(
              '$altura',
              style: numberTextStyle,
            ),
            const Text(
              'cm',
              style: labelTextStyle,
            ),
          ],
        ),
        Slider(
          min: 120,
          max: 220,
          value: altura.toDouble(),
          // aqui estamos usando o onchaged que foi passado como parâmetro (callback)
          onChanged: onChanged,
        )
      ],
    );
  }
}
