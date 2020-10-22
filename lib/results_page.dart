import 'package:flutter/material.dart';
import 'constants.dart';
import 'constants.dart';
import 'constants.dart';
import 'reusable_card.dart';
import 'input_page.dart';
import 'calculator_brain.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage(
      {@required this.roundedBMI,
      @required this.results,
      @required this.interpertation});

  final String roundedBMI;
  final String results;
  final String interpertation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BMI CALCULATOR',
          style: kTextStyleComment,
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Result',
                style: kTextStyleTitle,
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
                children: [
                  Text(
                    results,
                    style: results == 'Normal'
                        ? kTextStyleGreenMeasure
                        : kTextStyleYellowMeasure,
                  ),
                  Text(
                    roundedBMI,
                    style: kTextStyleResult,
                  ),
                  Container(
                    child: Column(
                      children: [
                        Text(
                          'Normal BMI range:',
                          style: kLabelTextStyle,
                        ),
                        Text(
                          '18.5 - 25 kg/m2',
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(
                      vertical: 0,
                      horizontal: 20.0,
                    ),
                    child: Text(
                      interpertation,
                      style: kTextStyleComment,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  ReusableCard(
                    colour: kInactiveCardColor,
                    cardChild: Container(
                      width: double.infinity,
                      height: 60.0,
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          'SAVE RESULT',
                          style: kLabelTextStyle,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pop(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return InputPage();
                  },
                ),
              );
            },
            child: Container(
              color: kBottomContainerColor,
              margin: EdgeInsets.only(top: 10.0),
              width: double.infinity,
              height: kBottomContainerHeight,
              padding: EdgeInsets.only(bottom: 15.0),
              child: Center(
                child: Text(
                  'RE-CALCULATE',
                  style: kLargeButtonTextStyle,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
