import 'dart:convert';
import 'package:flutter_web/material.dart';
import 'package:squaredemy_web/global/dims.dart';
import 'package:squaredemy_web/global/styles.dart';
import 'package:squaredemy_web/models/user.dart';
import 'package:squaredemy_web/widgets/buttons.dart';
import 'package:squaredemy_web/widgets/text.dart';

import 'package:http/http.dart' as http;

class TestingForm extends StatefulWidget {
  @override
  _TestingFormState createState() => _TestingFormState();
}

class _TestingFormState extends State<TestingForm> {
  GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  TextEditingController _emailCtrl1 = TextEditingController();
  TextEditingController _emailCtrl2 = TextEditingController();

  User _user = User();

  bool _loading = false;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Container(
      width: width < 1100 ? width * 0.9 : width * 0.4,
      padding: EdgeInsets.symmetric(horizontal: responsiveSize(width, 40), vertical: responsiveSize(width, 40)),
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
          _loading ? CircularProgressIndicator() : RaisedButton(
            child: ButtonText("Join Testing", ),
            elevation: 0,
            onPressed: (){
              if(_formkey.currentState.validate()){
                _formkey.currentState.save();

                setState(() {
                 _loading = true; 
                });
                // print(jsonEncode(_user.toFirestoreMap()));
                http.post("https://firestore.googleapis.com/v1/projects/squaredemy/databases/(default)/documents/users?documentId=${_user.email}",
                // headers: {
                //   "Content-Type": "application/json"
                // },
                body: jsonEncode(_user.toFirestoreMap())).then((http.Response response) {
                  setState(() {
                   _loading = false; 
                  });
                  if(jsonDecode(response.body).contains("name")){
                    showDialog(
                      context: context,
                      builder: (BuildContext context) => AlertDialog(
                        title: Text("Welcome Onboard"),
                        content: Text("Please check your email for the next step"),
                      )
                    );
                  } else{
                    showDialog(
                      context: context,
                      builder: (BuildContext context) => AlertDialog(
                        title: Text("Something went wrong"),
                        content: Text("Please try again"),
                      )
                    );
                  }
                });
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
