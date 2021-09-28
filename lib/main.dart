import 'package:flutter/material.dart';
import 'input_page.dart';
import 'results_page.dart';
import 'calculator_brain.dart';

//this page has all the themes.
void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: InputPage(),
      //   routes: {
      // '/' : (context) => InputPage() ,
      // '/second' :(context )=> ResultsPage(
      //   cal.Results(), cal.Bmivalue(), cal.Comments(),
      // ),
      //   },
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xff0e1020),
        scaffoldBackgroundColor: Color(0xff0e1020),

      ),

    );
  }
}

