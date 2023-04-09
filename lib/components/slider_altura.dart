import 'package:calculadora_imc/constants.dart';
import 'package:flutter/material.dart';

class SliderAltura extends StatelessWidget {
  const SliderAltura({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'ALTURA',
          style: kLabelTextStyle,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.baseline,
          textBaseline: TextBaseline.alphabetic,
          children: const <Widget>[
            Text(
              '1.84',
              style: kNumberTextStyle,
            ),
            Text(
              'cm',
              style: kLabelTextStyle,
            ),
          ],
        ),
        Slider(
          value: 120,
          min: 120,
          max: 220,
          onChanged: (double value) {},
        )
      ],
    );
  }
}
