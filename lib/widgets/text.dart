import 'package:flutter_web/material.dart';

class BodyText extends StatelessWidget {
  final String text;

  BodyText(this.text);

  @override
  Widget build(BuildContext context) {
    return Text(this.text, 
    style: TextStyle(
      color: Colors.white
    ),);
  }
}