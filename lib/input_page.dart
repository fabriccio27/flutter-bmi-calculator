import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'constants.dart';
import 'card_icon.dart';
import 'reusable_card.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

enum Genders { male, female, }

class _InputPageState extends State<InputPage> {
  Genders? activeGender;

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
                    colour: activeGender == Genders.male ? kActiveCardColor : kInactiveCardColor,
                    cardChild: CardIcon(icon: FontAwesomeIcons.mars, iconText: 'MALE'),
                    onTapHandler: () {
                      setState(() {
                        activeGender  =Genders.male;
                      });
                    },
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: activeGender == Genders.female ?  kActiveCardColor: kInactiveCardColor,
                    cardChild: CardIcon(iconText: 'FEMALE', icon: FontAwesomeIcons.venus),
                    onTapHandler: () {
                      setState(() {
                        activeGender = Genders.female;
                      });
                    },
                  ),
                )
              ],
            )
          ),
          Expanded(
            child: ReusableCard(
              colour: kActiveCardColor,
              cardChild: Column(
                children: [
                  Text('HEIGHT', style: kLabelTextStyle,)
                ],
              ),
              onTapHandler: (){},
            ),
          ),
          /* Expanded(
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
          ), */
          Container(
              color: kBottomContainerColor,
              margin: const EdgeInsetsDirectional.only(top: 10.0),
              width: double.infinity,
              height: kBottomContainerHeight,
          ),
        ]
      ),
    );
  }
}
