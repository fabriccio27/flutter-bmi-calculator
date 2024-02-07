import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({required Color this.colour, required Widget this.cardChild });
  final Color colour;
  final Widget cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(10)
      ),
    );
  }
}