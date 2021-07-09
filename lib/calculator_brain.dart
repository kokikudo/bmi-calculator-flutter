import 'package:flutter/cupertino.dart';
import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({@required this.weight, @required this.height});

  final weight;
  final height;
  double _bmi;

  String resultBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getText() {
    if (_bmi > 30) {
      return 'OBESE';
    } else if (_bmi >= 25) {
      return 'OVERWEIGHT';
    } else if (_bmi >= 5) {
      return 'NORMAL';
    } else {
      return 'UNDERWEIGHT';
    }
  }

  String getInterpretation() {
    if (_bmi > 30) {
      return 'This is a dangerous area. Talk to your doctor now.';
    } else if (_bmi >= 25) {
      return 'Let\'s review your lifestyle.';
    } else if (_bmi >= 5) {
      return 'Standard size. This is how it goes.';
    } else {
      return 'This is a skinny one. Let\'s eat a little more.';
    }
  }
}
