
import 'package:flutter/material.dart';

class IconContent extends StatelessWidget {
  final IconData ?icon ;
  final String ?label ;

  IconContent({ this.icon ,this.label});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon,size: 80),
        SizedBox(height: 15),
        Text(label! ,style: TextStyle(
            fontSize: 18,
            color: Color(0xFF8D8E98)
        ),)
      ],
      mainAxisAlignment: MainAxisAlignment.center,
    );
  }
}
