import 'package:flutter_web/material.dart';
import 'package:squaredemy_web/widgets/nav.dart';
import 'package:squaredemy_web/widgets/text.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double contentWidth = MediaQuery.of(context).size.width / 2 - MediaQuery.of(context).size.width * 0.1;
    final double contentHeight = MediaQuery.of(context).size.height - MediaQuery.of(context).size.height * 0.05;

    return Scaffold(
      backgroundColor: Color.fromRGBO(45, 63, 97, 1),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.1, vertical: 20),
        child: Column(
          children: <Widget>[
            NavBar(),
            /// main [section]
            Container(
              height: contentHeight,
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
          ],
        ),
      ),
    );
  }
}
