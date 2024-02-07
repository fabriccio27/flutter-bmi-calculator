import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'card_icon.dart';
import 'reusable_card.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

const reusableCardColor = Color(0xFF1D1E33);
const bottonContainerColor = Color(0xFFEB1555);
const bottonContainerHeight = 80.0;

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('BMI CALCULATOR')),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    colour: reusableCardColor,
                    cardChild: CardIcon(icon: FontAwesomeIcons.mars, iconText: 'MALE'),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: reusableCardColor,
                    cardChild: CardIcon(iconText: 'FEMALE', icon: FontAwesomeIcons.venus)
                  ),
                )
              ],
            )
          ),
          Expanded(
            child: ReusableCard(colour: reusableCardColor)
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(colour: reusableCardColor),
                ),
                Expanded(
                  child: ReusableCard(colour: reusableCardColor),
                )
              ],
            )
          ),
          Container(
              color: bottonContainerColor,
              margin: const EdgeInsetsDirectional.only(top: 10.0),
              width: double.infinity,
              height: bottonContainerHeight,
          ),
        ]
      ),
    );
  }
}
