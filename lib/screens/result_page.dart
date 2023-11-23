import 'package:bmi_calculator/components/bottomButton.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/components/reuseble_card.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
 final String bmiResult,resltText,resultInterpretation;
 ResultPage({required this.bmiResult,required this.resltText,required this.resultInterpretation});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Result Page'),


      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(child: Container(
            padding: EdgeInsets.all(15),
            alignment: Alignment.bottomLeft,
            child: Text('YOUR RESULT ',style: kTitleTextStyle,),
          ),),
          Expanded(
              flex:5,
              child: ReusableCard(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(resltText!.toUpperCase(),style: kResultTextStyle,),
                    Text(bmiResult!,style: kBmiTextStyle,),
                    Column(
                      children: [
                        Text('Normal BMI Range ',style: kGrayBodyTextSyle,),
                        Text('18.5 - 25 kg /m2 ',style: kBodyTextStyle,),

                      ],

                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text(resultInterpretation!,style: kBodyTextStyle,
                        textAlign: TextAlign.center,),
                    ),

                  ],
                ),
              ),),
          Expanded(
            child: bottomButton(title: 'RE-CALCULATE ',onTab: (){
              Navigator.pop(context);
            },),
          )

        ],
      )
    );
  }
}
