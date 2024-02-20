import 'package:flutter/material.dart';
import 'input_page.dart';
import 'constants.dart';

class ResultsPage extends StatelessWidget {
  const ResultsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator')
      ),
      body: Column(
        children: [
          Text('Hello'),
          GestureDetector(
            child: Container(
              child: Center(
                child: Text(
                  'RECALCULATE',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22.0,
                  ),
                ),
              ),
              color: kBottomContainerColor,
              margin: const EdgeInsetsDirectional.only(top: 10.0),
              width: double.infinity,
              height: kBottomContainerHeight,
            ),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => InputPage()));
            },
          )
        ],
      ),
    );
  }
}