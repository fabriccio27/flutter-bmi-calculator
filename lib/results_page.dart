import 'package:bmi_calculator/big_bottom_button.dart';
import 'package:flutter/material.dart';
import 'input_page.dart';
import 'constants.dart';
import 'reusable_card.dart';

class ResultsPage extends StatelessWidget {
  const ResultsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator')
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Text(
              'Your result',
              style: titleTextStyle
            ),
          ),
          Expanded(
            child: ReusableCard(
              colour: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  
                ],
              )
            ),
            flex: 5
          ),
          Expanded(
            child: BigBottomButton(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => InputPage()));
              },
              mainText: 'RE-CALCULATE'
            ),
          )
        ],
      ),
    );
  }
}
