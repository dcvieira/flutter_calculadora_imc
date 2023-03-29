import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {
  final String buttonTitle;
  const BottomButton({super.key, required this.buttonTitle});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10.0),
      //padding: EdgeInsets.only(bottom: 10.0),
      width: double.infinity,
      height: 70.0,
      color: Color(0xFFEB1555),
      child: Center(
        child: Text(
          buttonTitle,
          style: TextStyle(
            fontSize: 25.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
