import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({ required height, required weight }) {
    this._bmi = weight / pow(height/100, 2);
  }

  double _bmi= 19;

  String getBMIString() {
    return _bmi.toStringAsFixed(1);
  }
  String getResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }
  String getInterpretation() {
    if (_bmi >= 25) return 'You have a higher than normal body weight. Try to exercise more.';
    if (_bmi > 18.5) return 'You have a normal body weight. Good job!';
    return 'You have a lower than normal body weight. You can eat a bit more.';
  }

}
