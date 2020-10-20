import 'package:flutter/material.dart';

import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/customs/theme.dart';
import 'package:bmi_calculator/customs/buttons/bottomButton.dart';

class ResultsPage extends StatelessWidget {
  final String bmiResult;
  final String result;
  final String description;

  ResultsPage(
      {@required this.bmiResult,
      @required this.result,
      @required this.description});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: Container(
                padding: EdgeInsets.all(15.0),
                alignment: Alignment.bottomLeft,
                child: Text(
                  'Your Result',
                  style: kCustomTitleStyle,
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: ReusableCard(
                colour: kActiveCardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      result.toUpperCase(),
                      style: kCustomResultStyle,
                    ),
                    Text(
                      bmiResult,
                      style: kCustomBMIStyle,
                    ),
                    Text(
                      description,
                      style: kCustomBMIDescriptionStyle,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
            BottomButton(
              onTap: () {
                Navigator.pop(context);
              },
              title: 'RE-CALCULATE',
            )
          ],
        ),
      ),
    );
  }
}
