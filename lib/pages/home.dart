import 'package:flutter_web/material.dart';
import 'package:squaredemy_web/pages/about.dart';
import 'package:squaredemy_web/widgets/text.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(45, 63, 97, 1),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.1, vertical: 20),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Image(
                        height: 30,
                        image: AssetImage("logo_primary.png"),
                      ),
                      SizedBox(width: 20,),
                      BodyText("SQUAREDEMY")
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    children: <Widget>[
                      FlatButton(
                        child: BodyText("HOME"),
                        onPressed: (){
                          Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (BuildContext context) => HomePage()
                          ));
                        },
                      ),
                      FlatButton(
                        child: BodyText("ABOUT"),
                        onPressed: (){
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (BuildContext context) => AboutPage()
                          ));
                        },
                      ),
                      FlatButton(
                        child: BodyText("CONTACT"),
                        onPressed: (){
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (BuildContext context) => AboutPage()
                          ));
                        },
                      ),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}