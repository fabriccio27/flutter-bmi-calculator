import 'package:flutter/material.dart';
import 'constants.dart';

class BigBottomButton extends StatelessWidget {
  const BigBottomButton({ required this.onTap, required this.mainText });
  final VoidCallback onTap;
  final String mainText;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        child: Center(
          child: Text(
            mainText,
            style: largeButtonTextStyle,
          ),
        ),
        color: kBottomContainerColor,
        margin: const EdgeInsetsDirectional.only(top: 10.0),
        padding: EdgeInsets.only(bottom: 20.0),
        width: double.infinity,
        height: kBottomContainerHeight,
      ),
      onTap: onTap,
    );
  }
}
