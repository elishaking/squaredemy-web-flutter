import 'package:flutter_web/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                child: Row(
                  children: <Widget>[
                    Image(
                      image: AssetImage("logo_primary.png"),
                    ),
                    Text("SQUAREDEMY")
                  ],
                ),
              ),
              Container(
                child: Row(
                  children: <Widget>[
                    FlatButton(
                      child: Text("HOME"),
                      onPressed: (){

                      },
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}