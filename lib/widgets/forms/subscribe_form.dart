import 'package:flutter_web/material.dart';
import 'package:squaredemy_web/global/styles.dart';
import 'package:squaredemy_web/widgets/text.dart';

class SubscribeForm extends StatefulWidget {
  final double contentWidth;
  final double splitWidth;
  final EdgeInsetsGeometry buttonPadding;

  SubscribeForm(this.contentWidth, this.splitWidth, this.buttonPadding);

  @override
  _SubscribeFormState createState() => _SubscribeFormState();
}

class _SubscribeFormState extends State<SubscribeForm> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // width: double.infinity,
      alignment: Alignment.bottomCenter,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          HeadlineText("Stay updated about Squaredemy"),
          SizedBox(height: 90,),
          _buildSubscribeForm(widget.contentWidth, widget.splitWidth, widget.buttonPadding),
        ],
      ),
    );
  }

  Widget _buildSubscribeForm(final double contentWidth, double splitWidth, final EdgeInsets buttonPadding) {
    final Form form = Form(
      child: TextFormField(
        keyboardType: TextInputType.emailAddress,
        style: TextStyle(
          color: Colors.white,
        ),
        decoration: InputDecoration(
          hintText: "email",
          hintStyle: TextStyle(color: Colors.white70),
          contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 33),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(contentWidth < 1100 ? 10 : 0),
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(contentWidth < 1100 ? 10 : 0),
            )
          ),
          filled: true,
          fillColor: ThemeColors.primary
        ),
      ),
    );

    RaisedButton subscribeButton = RaisedButton(
      child: ButtonText("Subscribe",),
      elevation: 0,
      onPressed: (){
      },
      color: ThemeColors.primaryButton,
      padding: buttonPadding,
    );

    if(contentWidth < 1100){
      return Column(
        children: <Widget>[
          Container(
            width: contentWidth * 0.9,
            child: form,
          ),
          SizedBox(height: 20,),
          subscribeButton
        ],
      );
    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          width: splitWidth * 0.5,
          child: form,
        ),
        subscribeButton
      ],
    );
  }
}