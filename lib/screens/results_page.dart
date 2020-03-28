import 'package:flutter/material.dart';
import '../constants.dart';
import '../components/reusable_card.dart';
import '../components/bottom_button.dart';

class ResultsPage extends StatelessWidget {
  final String bmiResult;
  final String resultText;
  final String resultInterpretaion;

  ResultsPage({this.bmiResult, this.resultText, this.resultInterpretaion});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          children: <Widget>[
            Container(
              width: double.infinity,
              padding: EdgeInsets.only(left: 15),
              child: Text(
                'Your Result',
                style: kTitleTextStyle,
              ),
            ),
            Expanded(
              flex: 5,
              child: ReusableCard(
                onPressed: () {},
                colour: kActiveCardColour,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Center(
                      child: Text(
                        resultText,
                        style: kResultTextStyle,
                      ),
                    ),
                    Center(
                      child: Text(
                        bmiResult,
                        style: kBMITextStyle,
                      ),
                    ),
                    Center(
                      child: Text(
                        resultInterpretaion,
                        style: kBodyTextStyle,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            BottomButton(
              buttonTitle: 'RE-CALCULATE',
              onPressed: () {
                Navigator.pop(context);
              },
            )
          ],
        ));
  }
}
