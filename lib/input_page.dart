

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'ReusableCard.dart';
import 'input_Card_Column.dart';
import 'constants.dart';
import 'main.dart';
import 'CustomRoundedButton.dart';
import 'calculator_brain.dart';
import 'results_page.dart';




class InputPage extends StatefulWidget {



  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  Gender? theGender;
  int height = 125;
  int weight = 20;
  int age = 2;



//   void updateColor(Gender gender){
//
// gender == Gender.male ? {
//   MaleCol == Col ? {MaleCol = PressedCol FeCol = Col;} : {MaleCol = Col}
//
//
// gender == Gender.female ? {
//   FeCol == Col ? {FeCol = PressedCol; MaleCol = Col;}: {FeCol = Col;}
// }
//   }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        // crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[

          Expanded(
              child: Row(
                  children:
                  <Widget>[
                    Expanded(
// male widget
                      child: ReuseableCard( theGender == Gender.male? PressedCol :  Col,
                        input_Card_Column(FontAwesomeIcons.mars, 'male'),
                            () {
                          setState(() {
                            theGender = Gender.male;
                          });
                        },


                      ),


                    ),
// female widget
                    Expanded(
                        child: ReuseableCard
                          (theGender == Gender.female ? PressedCol :  Col, input_Card_Column(
                            FontAwesomeIcons.venus, 'female'

                        ),


                                () {
                              setState(() {
                                theGender = Gender.female;
                              });
                            }
                        )
                    )




                  ]
              )
          ),
          // height widget
          Expanded(child: ReuseableCard(Col, Column(
              mainAxisAlignment: MainAxisAlignment.center,

              children: <Widget>[
                box,
                Text('Height', style : TextSet),
                SizedBox(height: 5.0, width: 5.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: [Text(height.toString(),  style: numberText  ),
                    Text(' cm', style: TextSet ),
                  ],
                ),

                // SizedBox(height: 10.0,width: 10.0),


                Row(
                  mainAxisAlignment: MainAxisAlignment.center,

                  children: <Widget> [


                    SliderTheme(
                      data: SliderThemeData(
                        thumbShape: RoundSliderThumbShape(enabledThumbRadius: 19.0),
                        thumbColor: BottomCol,
                        inactiveTrackColor: Colors.grey
                        ,
                        activeTrackColor: Colors.white,
                        overlayColor: Color(0x29eb1555),
                        overlayShape: RoundSliderOverlayShape(overlayRadius: 30.0),

                      ),
                      child: Slider

                        (value: height.toDouble(),
                          min: 120.0,
                          max: 250.0, //why

                          onChanged:(double newValue)  {
                            setState(() {
                              height = newValue.round();

                            });
                          }) ,



                    )
                  ],
                )

              ]
          ), () {
            setState(() {
              //TheGender = Gender.female;
            });}
          )
          ),

          Expanded(child: Row(
              children:
              <Widget>[Expanded(
                child: ReuseableCard(Col, Column(
                  // margin: EdgeInsets.all(15.0),
                  children: [
                    box,
                    Text('Weight', style : TextSet),
                    Text (weight.toString(), style: numberText),
                    Row(mainAxisAlignment: MainAxisAlignment.center,

                        children : [

                          CustomRoundedButton(FontAwesomeIcons.minus, (){
                            setState(() {
                              weight--;
                            });
                          }),
                          SizedBox(width: 30.0, height: 30.0),
                          CustomRoundedButton(FontAwesomeIcons.plus, (){
                            setState(() {
                              weight++;
                            });
                          }
                          )]),
                  ],

                ),

                        () {
                      setState(() {

                      });


                    }
                ),
              ),
                Expanded(
                  child: ReuseableCard(Col, Column(
                    // margin: EdgeInsets.all(15.0),
                    children: [
                      box,
                      Text('Age', style : TextSet),
                      Text (age.toString(), style: numberText),
                      Row(mainAxisAlignment: MainAxisAlignment.center,

                          children : [

                            CustomRoundedButton(FontAwesomeIcons.minus, (){
                              setState(() {
                                age--;
                              });
                            }),
                            SizedBox(width: 30.0, height: 30.0),
                            CustomRoundedButton(FontAwesomeIcons.plus, (){
                              setState(() {
                                age++;

                              });
                            }
                            )]),
                    ],

                  ),
                          (){
                        setState(() {


                        },
                        );}

                  ),
                ),


              ]
          )
          ),


          Expanded( child: Container(
            margin: EdgeInsets.only(top: 50.0),
            color: BottomCol,
            height:double.infinity,
            width: double.infinity,

            child: Column(

              mainAxisAlignment: MainAxisAlignment.center,
              children: [ RaisedButton(

                  onPressed: () {
                    CalculatorBrain cal = CalculatorBrain(height, weight);
                    Navigator.push(context, MaterialPageRoute(builder:(context) => ResultsPage (
                      cal.Result(), cal.Bmivalue(), cal.Comments(),
                    ),
                    ),
                    );


                  },
                  color: Colors.grey,
                  child: Text( 'CALCULATE', style :  TextStyle(color: Colors.white, fontSize: 30.0),


                    //margin: EdgeInsets.only(top: 80.0),



                  )


              )
              ],

            ),
          ),
          ),

        ],
      ),
    );



  }















}




