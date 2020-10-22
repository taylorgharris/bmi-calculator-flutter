import 'dart:math';

import 'package:flutter/material.dart';

class CalculatorBrain {
  CalculatorBrain({this.height, this.weight});

  final int height;
  final int weight;

  double _bmi;
  dynamic weightColor;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      weightColor = Colors.red;
      return 'Overweight';
    } else if (_bmi > 18.5) {
      weightColor = Colors.green;
      return 'Normal';
    } else {
      weightColor = Colors.yellow;
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'You have a higher than normal body weight.';
    } else if (_bmi > 18.5) {
      return 'You have a normal body weight.';
    } else {
      return 'You have a lower than normal body weight.';
    }
  }
}

//TODO: make equation for changing text on results page based on CalculatorBrainResults
//TODO: make save result button functional
