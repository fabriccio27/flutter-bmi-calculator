import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
          style: TextStyle(
            fontSize: 18,
            color: Color(0xFF8D8E98)
          ),
        )
      ],
    );
  }
}

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
