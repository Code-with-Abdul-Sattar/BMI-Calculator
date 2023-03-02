import 'dart:math';
import 'Result.dart';

class Logic {
  calculate(int height, int weight) {
    double bmi = 0;
    bmi = weight / pow(height / 100, 2);

    return bmi;
  }
}
