import '../constants.dart';
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
      color: backgroundColor,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Seu IMC é de',
              style: labelTextStyle,
            ),
            Text(
              imc.toStringAsFixed(2),
              style: numberTextStyle,
            ),
            Text(
              resultado,
              style: labelTextStyle,
            ),
          ],
        ),
      ),
    );
  }
}
