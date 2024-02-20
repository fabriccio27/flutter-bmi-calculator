import 'package:flutter/material.dart';
void printer() {
  print('I was tapped');
}

class ReusableCard extends StatelessWidget {
  ReusableCard({required Color this.colour, required Widget this.cardChild, this.onTapHandler = printer});
  final Color colour;
  final Widget cardChild;
  final VoidCallback onTapHandler;

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
      onTap: onTapHandler,
    );
  }
}