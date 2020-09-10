import 'package:calcapp/bottom_button.dart';
import 'package:calcapp/constants.dart';
import 'package:calcapp/input_page.dart';
import 'package:calcapp/reusable_card.dart';
import 'package:flutter/material.dart';
import 'calculator_brain.dart';

class Results extends StatelessWidget {
  final String getBMI;
  final String getResults;
  final String interpretation;

  Results({this.getBMI, this.getResults, this.interpretation});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              margin: EdgeInsets.all(10.0),
              child: Text(
                'YOUR RESULT',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 45.0,
                    color: Colors.white),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              cardChild: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text(
                    getResults,
                    style: TextStyle(fontSize: 40.0, color: Color(0xFF24D876)),
                  ),
                  Text(
                    getBMI,
                    style: TextStyle(fontSize: 100.0, color: Colors.white),
                  ),
                  Text(
                    interpretation,
                    style: TextStyle(fontSize: 25.0, color: Colors.white),
                    textAlign: TextAlign.center,
                  )
                ],
              ),
              colour: Color(0xFF1D1E33),
            ),
          ),
          BottomButton(
            text: 'RECALCULATE',
            onPress: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}
