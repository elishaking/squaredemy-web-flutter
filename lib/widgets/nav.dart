import 'package:flutter_web/material.dart';
import 'package:squaredemy_web/pages/about.dart';
import 'package:squaredemy_web/pages/home.dart';
import 'package:squaredemy_web/widgets/text.dart';

class NavBar extends StatelessWidget {
  const NavBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Container(
          child: Row(
            children: <Widget>[
              Image(
                height: 30,
                image: AssetImage("logo_white.png"),
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
    );
  }
}