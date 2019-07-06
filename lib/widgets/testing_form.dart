import 'package:flutter_web/material.dart';
import 'package:squaredemy_web/global/styles.dart';
import 'package:squaredemy_web/models/user.dart';
import 'package:squaredemy_web/widgets/buttons.dart';
import 'package:squaredemy_web/widgets/text.dart';

class TestingForm extends StatefulWidget {
  @override
  _TestingFormState createState() => _TestingFormState();
}

class _TestingFormState extends State<TestingForm> {
  GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  TextEditingController _emailCtrl1 = TextEditingController();
  TextEditingController _emailCtrl2 = TextEditingController();

  User _user = User();

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Container(
      width: width * 0.4,
      padding: EdgeInsets.symmetric(horizontal: 40, vertical: 40),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20)
      ),
      child: Column(
        children: <Widget>[
          HeadlineText("Join The Building Group", textColor: ThemeColors.primary,
          textAlign: TextAlign.center,),
          // SizedBox(height: 10,),
          // BodyText("* Get the first 3 months free"),
          SizedBox(height: 100,),
          Form(
            key: _formkey,
            child: Column(
              children: <Widget>[
                TextFormField(
                  decoration: InputDecoration(
                    labelText: "name",
                    border: OutlineInputBorder()
                  ),
                  validator: (String value) {
                    if(value.isEmpty) return "Please enter your name";
                    if(value.length > 200) return "200 characters limit";
                  },
                  onSaved: (String value){
                    _user.name = value;
                  },
                ),
                SizedBox(height: 60,),
                TextFormField(
                  controller: _emailCtrl1,
                  decoration: InputDecoration(
                    labelText: "email",
                    border: OutlineInputBorder()
                  ),
                  keyboardType: TextInputType.emailAddress,
                  validator: (String value) {
                    if(value.isEmpty) return "Please enter your email";
                    if(value.length > 200) return "200 characters limit";
                    if(_emailCtrl2.text != value) return "emails don't match";
                  },
                  onSaved: (String value){
                    _user.email = value;
                  },
                ),
                SizedBox(height: 60,),
                TextFormField(
                  controller: _emailCtrl2,
                  decoration: InputDecoration(
                    labelText: "confirm email",
                    border: OutlineInputBorder()
                  ),
                  keyboardType: TextInputType.emailAddress,
                  validator: (String value) {
                    if(value.isEmpty) return "Please enter your email again";
                    if(value.length > 200) return "200 characters limit";
                    if(_emailCtrl1.text != value) return "emails don't match";
                  }
                ),
              ],
            ),
          ),
          SizedBox(height: 60,),
          RaisedButton(
            child: ButtonText("Join Testing",),
            elevation: 0,
            onPressed: (){
              if(_formkey.currentState.validate()){
                _formkey.currentState.save();
              }
            },
            color: Color.fromRGBO(34, 209, 164, 1),
            padding: EdgeInsets.symmetric(horizontal: 85, vertical: 30),
          )
        ],
      ),
    );


  }

  @override
  void dispose() {
    _emailCtrl1.dispose();
    _emailCtrl2.dispose();
    super.dispose();
  }
}
