import 'package:bmi_calculator/ReusableCard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'constants.dart';
import 'main.dart';
import 'ReusableCard.dart';
import 'calculator_brain.dart';
import 'input_page.dart';


class ResultsPage extends StatelessWidget {

  ResultsPage(@required this.results,@required this.BMI, @required this.Comments );
  final String results ;
  final String BMI ;

  final String Comments;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      // home: InputPage(),
      appBar: AppBar

        (

        title: Text('BMI Calculator'),

      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[Expanded (child: Container
            (margin: EdgeInsets.only( bottom: 20.0),
            alignment: Alignment.bottomLeft,

            child: Text('Your Result', style: TextStyle(color: Colors.white, fontSize: 50.0, fontWeight:FontWeight.w900),),),
          ),
            Expanded(
              flex:5,
              child: ReuseableCard(Col, Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,// everything in center vertically, not from horizontal perspective.
                crossAxisAlignment: CrossAxisAlignment.center,// stretches the containainer to fit screen.


                children: [
                  Align(
                      alignment: Alignment.center),


                  Text(results.toUpperCase(), style: TextStyle(color: Colors.greenAccent, fontSize: 30.0, ), textAlign: TextAlign.center),
                  box,
                  Text(BMI, style: TextStyle(color: Colors.white, fontSize: 50.0, fontWeight: FontWeight.w900),),
                  box,
                  Text(Comments, style: TextStyle(color: Colors.grey, fontSize: 30.0),textAlign: TextAlign.center),
                  box,

                ],

              ), () {}),
            ),
            Expanded(child: box),
            Expanded(child: Container(//margin: EdgeInsets.only(top: 50.0),
                color: BottomCol,
                height:double.infinity,
                width: double.infinity,

                child: Column(

                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [ RaisedButton(

                      onPressed: () {
                        Navigator.push(context,MaterialPageRoute(builder: (context) => InputPage()), );

                      },
                      color: Colors.grey,
                      child: Text( 'RECALCULATE', style :  TextStyle(color: Colors.white, fontSize: 30.0),


                        //margin: EdgeInsets.only(top: 80.0),



                      )


                  )
                  ],)

            ),

            ),
          ]
      ),
    );
  }

}
