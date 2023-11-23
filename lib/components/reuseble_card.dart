
import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {

  final Color? color;
  final Widget ?child ;
  final  void Function()? onPress;
  ReusableCard({this.color ,this.child,this.onPress});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(

      onTap: onPress,
      child: Container(
        child: child,
        height: kHeightContainer,
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: color?? kActiveCardColor,
            borderRadius: BorderRadius.circular(10)
        ),
      ),
    );
  }
}