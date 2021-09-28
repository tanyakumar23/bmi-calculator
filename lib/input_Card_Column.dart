import 'package:flutter/material.dart';
import 'constants.dart';
class input_Card_Column extends StatelessWidget {
  input_Card_Column(@required this.Iconn, this.words)
  ;

  final  IconData Iconn;
  final String words;

  @override
  Widget build(BuildContext context) {
    //Icon newIcon;
    return Column(
        mainAxisAlignment :  MainAxisAlignment.center,
        children: <Widget>[

          Icon(Iconn, size: 30.0),
          SizedBox(height: 15.0),
          Text(words, style: TextSet)


        ]
    );
  }
}

