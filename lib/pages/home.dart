import 'package:flutter_web/material.dart';
import 'package:squaredemy_web/widgets/nav.dart';
import 'package:squaredemy_web/widgets/text.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double contentWidth = MediaQuery.of(context).size.width / 2 - MediaQuery.of(context).size.width * 0.1;
    final double contentHeight = MediaQuery.of(context).size.height;
    final contentPadding = EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.1, vertical: 20);

    return Scaffold(
      backgroundColor: Color.fromRGBO(45, 63, 97, 1),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            NavBar(contentPadding),
            /// [section] [1]
            Container(
              padding: contentPadding,
              height: contentHeight - contentHeight * 0.05,
              child: Row(
                children: <Widget>[
                  Container(
                    width: contentWidth,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        HeadlineText("The Most Productive Way to Learn"),
                        SizedBox(height: 30,),
                        TitleText("One sentence unique value proposition goes here "),
                        SizedBox(height: 90,),
                        Row(
                          children: <Widget>[
                            RaisedButton(
                              child: ButtonText("Join Testing",),
                              elevation: 0,
                              onPressed: (){

                              },
                              color: Color.fromRGBO(34, 209, 164, 1),
                              padding: EdgeInsets.symmetric(horizontal: 85, vertical: 30),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: contentWidth,
                    // alignment: Alignment.centerRight,
                    child: Image(
                      image: AssetImage("phone.png"),
                    ),
                  )
                ],
              ),
            ),

            /// [section] [2]
            Container(
              height: contentHeight,
              width: double.infinity,
              color: Color.fromRGBO(48, 74, 123, 1),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image(
                    height: 400,
                    image: AssetImage("all-devices.png"),
                  ),
                  SizedBox(height: 80,),
                  HeadlineText("Available On All Screen sizes"),
                  SizedBox(height: 40,),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Flexible(
                        child: RaisedButton(
                          elevation: 0,
                          padding: EdgeInsets.symmetric(horizontal: 85, vertical: 30),
                          color: Color.fromRGBO(34, 209, 164, 1),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Icon(Icons.gesture),
                              SizedBox(width: 20,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  BodyText("Available On"),
                                  ButtonText("Google Play")
                                ],
                              )
                            ],
                          ),
                          onPressed: (){

                          },
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            /// [section] [2] [clipper]
            ClipPath(
              clipper: DiagonalCutClipper(),
              child: Container(
                height: contentHeight * 0.1,
                width: double.infinity,
                color: Color.fromRGBO(48, 74, 123, 1),
              ),
            ),

            /// [section] [3]
            Container(
              height: contentHeight,
              child: Stack(
                children: <Widget>[
                  ClipPath(
                    clipper: TopBezelClipper(),
                    child: Container(
                      color: Color.fromRGBO(20, 33, 57, 1),
                      width: double.infinity,
                      height: double.infinity,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DiagonalCutClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);
    // path.lineTo(0, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}

class TopBezelClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.moveTo(0, size.height / 1.2);
    path.quadraticBezierTo(size.width / 1.1, size.height / 4, size.width, size.height / 1.1);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }

}
