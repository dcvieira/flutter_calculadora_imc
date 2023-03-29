import 'package:calculadora_imc/constants.dart';
import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  Widget child;
  CustomCard({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: kActiveCardColour,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: child,
    );
  }
}
