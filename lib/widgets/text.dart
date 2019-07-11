import 'package:flutter_web/material.dart';

class BodyText extends StatelessWidget {
  final String text;
  final Color color;
  final TextAlign textAlign;

  final Map<double, double> fontSizes = {
    1700: 18,
    1500: 16,
    1100: 14,
    550: 12
  };

  BodyText(this.text, {this.color = Colors.white, this.textAlign = TextAlign.left});

  @override
  Widget build(BuildContext context) {
    return Text(this.text, 
    style: TextStyle(
      color: color,
      fontSize: _getFontSize(MediaQuery.of(context).size.width, fontSizes),
      fontWeight: FontWeight.w500
    ),
    overflow: TextOverflow.clip,
    textAlign: textAlign,);
  }
}

class ButtonText extends StatelessWidget {
  final String text;
  final Color color;

  final Map<double, double> fontSizes = {
    1700: 20,
    1500: 18,
    1100: 16,
    550: 14
  };

  ButtonText(this.text, {this.color = Colors.white});

  @override
  Widget build(BuildContext context) {
    return Text(this.text, 
    style: TextStyle(
      color: this.color,
      fontSize: _getFontSize(MediaQuery.of(context).size.width, fontSizes),
      fontWeight: FontWeight.w700
    ),
    textAlign: TextAlign.center,);
  }
}

class TitleText extends StatelessWidget {
  final String text;
  final Color color;
  final TextAlign textAlign;

  final Map<double, double> fontSizes = {
    1700: 24,
    1500: 21,
    1100: 16,
    550: 14
  };

  TitleText(this.text, {this.color = Colors.white, this.textAlign = TextAlign.center});

  @override
  Widget build(BuildContext context) {
    return Text(this.text, 
    style: TextStyle(
      color: this.color,
      fontSize: _getFontSize(MediaQuery.of(context).size.width, fontSizes),
      fontWeight: FontWeight.w700
    ),
    overflow: TextOverflow.clip,
    textAlign: textAlign,);
  }
}

class HeadlineText extends StatelessWidget {
  final String text;
  final Color textColor;
  final TextAlign textAlign;

  final Map<double, double> fontSizes = {
    1700: 52,
    1500: 47,
    1100: 42,
    550: 37
  };

  HeadlineText(this.text, {this.textColor = Colors.white, this.textAlign = TextAlign.center});

  @override
  Widget build(BuildContext context) {
    return Text(this.text, 
    style: TextStyle(
      color: textColor,
      fontSize: _getFontSize(MediaQuery.of(context).size.width, fontSizes),
      fontWeight: FontWeight.w900
    ),
    textAlign: textAlign,
    overflow: TextOverflow.clip,);
  }
}

double _getFontSize(final double contentWidth, final Map<double, double> fontSizes){
  if(contentWidth < 550) return fontSizes[550];
  if(contentWidth < 1100) return fontSizes[1100];
  if(contentWidth < 1500) return fontSizes[1500];

  return fontSizes[1700];
}
