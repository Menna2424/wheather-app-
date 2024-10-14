import 'package:flutter/material.dart';

class WeatherInfoColumn extends StatelessWidget {
String text1;
  String text2;
WeatherInfoColumn(this.text1, this.text2);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Text(text1, style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold ),),
      SizedBox(height: 5,),
      Text(text2, style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)

    ],);
  }
}
