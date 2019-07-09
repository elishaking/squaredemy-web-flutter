import 'package:flutter_web/material.dart';
import 'package:squaredemy_web/global/styles.dart';
import 'package:squaredemy_web/widgets/nav.dart';
import 'package:squaredemy_web/widgets/text.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double contentWidth = MediaQuery.of(context).size.width / 2 - MediaQuery.of(context).size.width * 0.1;
    final double contentHeight = MediaQuery.of(context).size.height;
    final contentPadding = EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.1, vertical: 20);

    return Scaffold(
      backgroundColor: ThemeColors.primary,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            NavBar(contentPadding),
            /// [section] [1]
            Container(
              padding: contentPadding,
              height: contentHeight - contentHeight * 0.05,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  HeadlineText("Building Squaredemy"),
                  SizedBox(height: 30,),
                  TitleText("Squaredemy is a comprehensive online learning platform brought to you by SKYBLAZAR with an aim to solve this problem. At its core is a well-informed AI (Artificial Intelligence) expert named Squaredbot that creates a custom and interactive learning curriculum for students based on a critical assessment of their needs."),
                  SizedBox(height: 90,),
                  Row(
                    children: <Widget>[
                      RaisedButton(
                        child: ButtonText("Meet Us",),
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
          ]
        )
      )
    );
  }
}