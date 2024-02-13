import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'card_icon.dart';
import 'reusable_card.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

enum Genders { male, female, }
const activeCardColor = Color(0xFF1D1E33);
const inactiveCardColor = Color(0xFF111328);
const bottonContainerColor = Color(0xFFEB1555);
const bottonContainerHeight = 80.0;

class _InputPageState extends State<InputPage> {
  Color maleCardColour = inactiveCardColor;
  Color femaleCardColour = inactiveCardColor;

  void activateCard(Genders gender) {
    if (gender == Genders.male) {
      if (maleCardColour == inactiveCardColor) {
        maleCardColour = activeCardColor;
        femaleCardColour = inactiveCardColor;
      }
    } else {
      if (femaleCardColour == inactiveCardColor) {
        femaleCardColour = activeCardColor;
        maleCardColour = inactiveCardColor;
      }
    }
  }

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
                  child: GestureDetector(
                    child: ReusableCard(
                      colour: activeCardColor,
                      cardChild: CardIcon(icon: FontAwesomeIcons.mars, iconText: 'MALE'),
                    ),
                    onTap: () {
                      setState(() {
                        activateCard(Genders.male);
                      });
                    },
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    child: ReusableCard(
                      colour: activeCardColor,
                      cardChild: CardIcon(iconText: 'FEMALE', icon: FontAwesomeIcons.venus)
                    ),
                    onTap: () {
                      setState(() {
                        activateCard(Genders.female);
                      });
                    }
                  ),
                )
              ],
            )
          ),
          Expanded(
            child: ReusableCard(colour: activeCardColor)
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(colour: activeCardColor),
                ),
                Expanded(
                  child: ReusableCard(colour: activeCardColor),
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
