import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({required Color this.colour, required Widget this.cardChild, required Function this.onTapHandler });
  final Color colour;
  final Widget cardChild;
  final Function onTapHandler;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10)
        ),
      ),
      onTap: () {
        onTapHandler();
      },
    );
  }
}