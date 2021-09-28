import 'package:flutter/material.dart';

//  GestureDetector(
// onTap: () {
// print('male was pressed');
// setState(() {
// TheGender = Gender.male;
// });
// },



class ReuseableCard extends StatelessWidget {
  ReuseableCard(@required this.colour, this.newchild, this.onpress);


  final Color colour;
  final Widget newchild;
  final VoidCallback onpress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpress,
      child: Container(

//height: 10.0,
          child: newchild, // adds whichever widget as child, thats all.
          margin: EdgeInsets.all(8.0),

          decoration: BoxDecoration(
            color: colour,
            borderRadius: BorderRadius.circular(20.0),


          )
      ),
    );
  }
}