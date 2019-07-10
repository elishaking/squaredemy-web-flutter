import 'package:flutter_web/material.dart';

class BodyText extends StatelessWidget {
  final String text;
  final Color color;
  final TextAlign textAlign;

  BodyText(this.text, {this.color = Colors.white, this.textAlign = TextAlign.left});

  @override
  Widget build(BuildContext context) {
    return Text(this.text, 
    style: TextStyle(
      color: color,
      fontWeight: FontWeight.w500
    ),
    overflow: TextOverflow.clip,
    textAlign: textAlign,);
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
      fontSize: 20,
      fontWeight: FontWeight.w700
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
      fontSize: 27,
      fontWeight: FontWeight.w700
    ),
    overflow: TextOverflow.clip,);
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
      fontSize: 60,
      fontWeight: FontWeight.w900
    ),
    textAlign: textAlign,
    overflow: TextOverflow.clip,);
  }
}
