import 'package:flutter_web/material.dart';

class BodyText extends StatelessWidget {
  final String text;
  final Color color;

  BodyText(this.text, {this.color = Colors.white});

  @override
  Widget build(BuildContext context) {
    return Text(this.text, 
    style: TextStyle(
      color: color
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
  final Color textColor;
  final TextAlign textAlign;

  HeadlineText(this.text, {this.textColor = Colors.white, this.textAlign = TextAlign.start});

  @override
  Widget build(BuildContext context) {
    return Text(this.text, 
    style: TextStyle(
      color: textColor,
      fontSize: 60
    ),
    textAlign: textAlign,
    overflow: TextOverflow.clip,);
  }
}
