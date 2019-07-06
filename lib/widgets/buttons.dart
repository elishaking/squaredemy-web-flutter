import 'package:flutter_web/material.dart';
import 'package:squaredemy_web/widgets/text.dart';

class PrimaryButton extends StatelessWidget {
  final String text;
  final Function onPressed;

  PrimaryButton(this.text, {this.onPressed});

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: ButtonText(text,),
      elevation: 0,
      onPressed: (){
        onPressed();
      },
      color: Color.fromRGBO(34, 209, 164, 1),
      padding: EdgeInsets.symmetric(horizontal: 85, vertical: 30),
    );
  }
}