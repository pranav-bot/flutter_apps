import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({required this.height, required this.weight});
  final int weight;
  final int height;

  late double bmi;

  String calculatorBMI() {
    bmi = weight / pow(height, 2);
    return bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (bmi > 1) {
      return "Overweight";
    } else if (bmi > 18.5) {
      return "Normal";
    } else {
      return "Underweight";
    }
  }

  String getInterpretation() {
    if (bmi >= 25) {
      return 'You have high bodyweight';
    } else if (bmi >= 18.5) {
      return "You have normal body weight";
    } else {
      return "You have low body weight";
    }
  }
}
