import 'package:flutter/material.dart';
import 'dart:math';
class CalculatorBrain {
  CalculatorBrain(@required this.height,@required this.weight);

  int weight;
  int height;
  double _bmi = 0;

  String Bmivalue (){
    _bmi = weight / pow( height/100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String Result() {
    if (_bmi >= 25){
      return 'overweight';
    }
    else if (_bmi >= 18.5){
      return 'normal';
    }
    else{
      return 'underweight';
    }
  }
  String Comments() {
    if (_bmi >= 25){
      return 'pls dont eat till absolutely necessary';
    }
    else if (_bmi >= 18.5){
      return ' good';
    }
    else{
      return ' pls stuff yourself till you barf';
    }
  }
}