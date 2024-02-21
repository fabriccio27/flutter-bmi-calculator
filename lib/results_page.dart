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
              cardChild: Container()
            ),
            flex: 5
          ),
          Expanded(
            child: GestureDetector(
              child: Container(
                child: Center(
                  child: Text(
                    'RECALCULATE',
                    style: largeButtonTextStyle
                  ),
                ),
                color: kBottomContainerColor,
                margin: const EdgeInsetsDirectional.only(top: 10.0),
                padding: EdgeInsets.only(bottom: 20.0),
                width: double.infinity,
                height: kBottomContainerHeight,
              ),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => InputPage()));
              },
            ),
          )
        ],
      ),
    );
  }
}