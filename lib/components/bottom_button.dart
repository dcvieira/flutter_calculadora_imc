import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {
  final String buttonTitle;
  final void Function()? onPressed;
  const BottomButton({super.key, required this.buttonTitle, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        margin: const EdgeInsets.only(top: 10.0),
        //padding: EdgeInsets.only(bottom: 10.0),
        width: double.infinity,
        height: 70.0,
        color: const Color(0xFFEB1555),
        child: Center(
          child: Text(
            buttonTitle,
            style: const TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
