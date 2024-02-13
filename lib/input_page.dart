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
  late Genders activeGender;

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
                      colour: activeGender == Genders.male ? activeCardColor : inactiveCardColor,
                      cardChild: CardIcon(icon: FontAwesomeIcons.mars, iconText: 'MALE'),
                    ),
                    onTap: () {
                      setState(() {
                        activeGender = Genders.male;
                      });
                    },
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    child: ReusableCard(
                      colour: activeGender == Genders.female ?  activeCardColor: inactiveCardColor,
                      cardChild: CardIcon(iconText: 'FEMALE', icon: FontAwesomeIcons.venus)
                    ),
                    onTap: () {
                      setState(() {
                        activeGender = Genders.female;
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
