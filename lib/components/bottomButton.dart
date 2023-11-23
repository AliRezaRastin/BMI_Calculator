import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class bottomButton extends StatelessWidget {
  final String? title;
  final VoidCallback? onTab;
  bottomButton({required this.title,required this.onTab});


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTab,
      child: Container(
        margin: EdgeInsets.only(top: 10),
        width: double.infinity,
        color: kButtonColor,
        child: Center(child: Text(title!,style:KLargeButton)),
      ),
    );
  }
}