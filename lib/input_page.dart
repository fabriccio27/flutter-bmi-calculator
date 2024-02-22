import 'package:bmi_calculator/results_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'constants.dart';
import 'card_icon.dart';
import 'reusable_card.dart';
import 'big_bottom_button.dart';
import 'calculator_brain.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

enum Genders { male, female, }

class _InputPageState extends State<InputPage> {
  Genders? activeGender;
  int height = 180;
  int weight = 70;
  int age = 18;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('BMI CALCULATOR')),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
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
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('HEIGHT', style: kLabelTextStyle,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(height.toString(), style: kChunkyTextStyle,),
                      Text('cm', style: kLabelTextStyle)
                    ],
                  ),
                  SliderTheme(
                    data:SliderTheme.of(context).copyWith(
                      thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15),
                      overlayShape: RoundSliderOverlayShape(overlayRadius: 30),
                      thumbColor: Color(0xFFEB1555),
                      activeTrackColor: Colors.white,
                      inactiveTrackColor: Color(0xFF8D8E98),
                      overlayColor: Color(0x1fEB1555) // opacity taken from slider theme def
                    ),
                    child: Slider(
                      value: height.toDouble(),
                      onChanged: (double newValue) {
                        setState(() {
                          height = newValue.round();
                        });
                      },
                      max: 220,
                      min: 50
                    ),
                  )
                ],
              ),
              onTapHandler: (){},
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    colour: kActiveCardColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'WEIGHT',
                          style: kLabelTextStyle,
                        ),
                        Text(
                          weight.toString(),
                          style: kChunkyTextStyle
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                          RoundIconButton(
                            icon: FontAwesomeIcons.minus,
                            onPressed: () {
                              setState(() {
                                weight--;
                              });
                            }
                          ),
                          SizedBox(
                            width: 10.0
                          ),
                          RoundIconButton(
                            icon: FontAwesomeIcons.plus,
                            onPressed: () {
                              setState(() {
                                weight++;
                              });
                            },
                          )
                        ],)
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: kActiveCardColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'AGE',
                          style: kLabelTextStyle,
                        ),
                        Text(
                          age.toString(),
                          style: kChunkyTextStyle
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                          RoundIconButton(
                            icon: FontAwesomeIcons.minus,
                            onPressed: () {
                              setState(() {
                                age--;
                              });
                            }
                          ),
                          SizedBox(
                            width: 10.0
                          ),
                          RoundIconButton(
                            icon: FontAwesomeIcons.plus,
                            onPressed: () {
                              setState(() {
                                age++;
                              });
                            },
                          )
                        ],)
                      ],
                    ),
                  ),
                ),
              ],
            )
          ),
          BigBottomButton(
            mainText: 'CALCULATE',
            onTap: () {
              CalculatorBrain calculator = CalculatorBrain(height: height, weight: weight);
              String bmi = calculator.getBMIString();
              String interpretation = calculator.getInterpretation();
              String result = calculator.getResult();
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ResultsPage(
                    bmiInterpretation: interpretation,
                    bmiResult: result,
                    bmiString: bmi,
                  )
                ),
              );
            },
          ),
        ]
      ),
    );
  }
}



class RoundIconButton extends StatelessWidget {
  RoundIconButton({required this.icon, required this.onPressed});
  final IconData icon;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      shape: CircleBorder(),
      child: Icon(icon),
      elevation: 6.0,
      fillColor: Color(0xFF4C4F5E),
      onPressed: onPressed,
      constraints: BoxConstraints.tightFor(width: 56.0, height: 56.0),
    );
  }
}