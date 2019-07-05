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

class ButtonText extends StatelessWidget {
  final String text;
  final Color color;

  ButtonText(this.text, {this.color = Colors.white});

  @override
  Widget build(BuildContext context) {
    return Text(this.text, 
    style: TextStyle(
      color: this.color,
      fontSize: 20
    ),);
  }
}

class TitleText extends StatelessWidget {
  final String text;
  final Color color;

  TitleText(this.text, {this.color = Colors.white});

  @override
  Widget build(BuildContext context) {
    return Text(this.text, 
    style: TextStyle(
      color: this.color,
      fontSize: 27
    ),);
  }
}

class HeadlineText extends StatelessWidget {
  final String text;

  HeadlineText(this.text);

  @override
  Widget build(BuildContext context) {
    return Text(this.text, 
    style: TextStyle(
      color: Colors.white,
      fontSize: 60
    ),
    overflow: TextOverflow.clip,);
  }
}
