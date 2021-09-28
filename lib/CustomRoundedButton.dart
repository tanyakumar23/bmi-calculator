import 'package:flutter/material.dart';

class CustomRoundedButton extends StatelessWidget {
  CustomRoundedButton(@required this.woord, @required this.newFunction);
  final IconData woord;

  final VoidCallback newFunction;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      elevation: 0.0,
      onPressed: newFunction,
      child: Icon(woord, size: 30.0) ,
      constraints: BoxConstraints.tightFor(
        height: 50.0,
        width: 50.0,

      ),


      shape: CircleBorder(),
      fillColor: Colors.grey,

    );
  }
}