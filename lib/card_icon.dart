import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';


class CardIcon extends StatelessWidget {
  const CardIcon ({ required String this.iconText, required IconData this.icon });
  final String iconText;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80,
        ),
        SizedBox(height: 15),
        Text(
          iconText,
          style: kLabelTextStyle
        )
      ],
    );
  }
}


