import 'package:calculadora_imc/constants.dart';
import 'package:flutter/material.dart';

class ModalResult extends StatelessWidget {
  const ModalResult({
    Key? key,
    required this.imc,
    required this.resultado,
  }) : super(key: key);

  final double imc;
  final String resultado;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      color: kBackgroundColor,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Seu IMC é de',
              style: kLabelTextStyle,
            ),
            Text(
              imc.toStringAsFixed(2),
              style: kNumberTextStyle,
            ),
            Text(
              resultado,
              style: kLabelTextStyle,
            ),
          ],
        ),
      ),
    );
  }
}
