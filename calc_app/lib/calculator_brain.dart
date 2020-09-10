import 'dart:math';

import 'package:flutter/material.dart';

class CalculatorBrain {
  double _bmi;
  final int height;
  final int weight;
  CalculatorBrain({@required this.height, @required this.weight});

  String getBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResults() {
    if (_bmi < 18.5) {
      return 'Underweight';
    } else if (_bmi > 25) {
      return 'Overweight';
    } else {
      return 'Normal';
    }
  }

  String getInterpretation() {
    if (_bmi < 18.5) {
      return 'You\'re underweight. You gotta eat more.';
    } else if (_bmi > 25) {
      return 'You\'re overweight. You gotta exercise more';
    } else {
      return 'You\'re weight is normal. Good job';
    }
  }
}
