import 'package:flutter_web/material.dart';
import 'package:squaredemy_web/global/dims.dart';
import 'package:squaredemy_web/global/styles.dart';
import 'package:squaredemy_web/widgets/clippers.dart';
import 'package:squaredemy_web/widgets/forms/contact_form.dart';
import 'package:squaredemy_web/widgets/nav.dart';
import 'package:squaredemy_web/widgets/text.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double contentHeight = MediaQuery.of(context).size.height;
    final double contentWidth = MediaQuery.of(context).size.width;
    final double splitWidth = contentWidth / 2 - contentWidth * 0.2;
    final double contactWidth = contentWidth * 0.4;
    final contentPadding = EdgeInsets.symmetric(horizontal: contentWidth * 0.1, vertical: 20);

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
                  HeadlineText("Building Squaredemy", textAlign: TextAlign.start,),
                  SizedBox(height: 30,),
                  TitleText("Squaredemy is a comprehensive online learning platform brought to you by SKYBLAZAR with an aim to solve this problem. At its core is a well-informed AI (Artificial Intelligence) expert named Squaredbot that creates a custom and interactive learning curriculum for students based on a critical assessment of their needs.", textAlign: TextAlign.start,),
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

            /// [section] [2]
            Container(
              height: contentWidth < 1100 ? contentHeight * 1.2 : contentHeight,
              width: double.infinity,
              padding: contentPadding,
              color: ThemeColors.primaryLight,
              child: Column(
                children: <Widget>[
                  // SizedBox(height: 100,),
                  HeadlineText("Meet the Team"),
                  SizedBox(height: responsiveSize(contentWidth, 40),),
                  TitleText("We love teamwork. We love the idea of everyone rallying together to help us win."),
                  SizedBox(height: responsiveSize(contentWidth, 70),),
                  _buildTeamMembers(contentWidth)
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
              height: contentWidth < 1100 ? contentHeight * 2.3 : contentHeight,
              width: double.infinity,
              padding: contentPadding,
              child: Column(
                children: <Widget>[
                  HeadlineText("Tough problems solved through innovative software soultions"),
                  SizedBox(height: responsiveSize(contentWidth, 60),),
                  TitleText("We are team of tenacious professionals with broadexpertise in graphic design and implementation of responsive/modern website, mobile apps and desktop apps. Our main goal is to keep tackling major socio-economic issues facing nations of the world through innovative software solutions"),
                  SizedBox(height: responsiveSize(contentWidth, 100),),
                  _buildMissionVission(splitWidth, contentWidth),
                  SizedBox(height: responsiveSize(contentWidth, 100)),
                  RaisedButton(
                    child: ButtonText("Visit Skyblazar",),
                    elevation: 0,
                    onPressed: (){

                    },
                    color: ThemeColors.secondaryButton,
                    padding: EdgeInsets.symmetric(horizontal: 85, vertical: 30),
                  ),
                ],
              ),
            ),

            /// [section] [4]
            Container(
              height: contentHeight * 1.3,
              padding: contentPadding,
              child: Stack(
                children: <Widget>[
                  Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(left: contactWidth / 1.2),
                    child: ContactForm()
                  ),
                  Container(
                    alignment: Alignment.topCenter,
                    margin: EdgeInsets.only(top: 100, right: contactWidth / 1.2),
                    child: Image(
                      image: AssetImage("contact.png"),
                      width: contactWidth,
                    ),
                  )
                ],
              ),
            ),

            /// [Footer]
            Container(
              height: contentHeight,
              child: Stack(
                children: <Widget>[
                  ClipPath(
                    clipper: TopBezelClipper(),
                    child: Container(
                      color: ThemeColors.primaryDark,
                      width: double.infinity,
                      height: double.infinity,
                    ),
                  ),
                  Container(
                    // width: double.infinity,
                    alignment: Alignment.bottomCenter,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        HeadlineText("Stay updated about Squaredemy"),
                        SizedBox(height: 90,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              width: contentWidth * 0.5,
                              child: Form(
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
                                        topRight: Radius.circular(0),
                                        bottomLeft: Radius.circular(10),
                                        bottomRight: Radius.circular(0),
                                      )
                                    ),
                                    filled: true,
                                    fillColor: ThemeColors.primary
                                  ),
                                ),
                              ),
                            ),
                            RaisedButton(
                              child: ButtonText("Subscribe",),
                              elevation: 0,
                              onPressed: (){
                              },
                              color: ThemeColors.primaryButton,
                              padding: EdgeInsets.symmetric(horizontal: 85, vertical: 30),
                            )
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          
            Container(
              height: contentHeight / 4,
              padding: contentPadding,
              color: ThemeColors.primaryDark,
              child: Row(
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
                        
                      ],
                    ),
                  )
                ],
              ),
            )
          ]
        )
      )
    );
  }

  Widget _buildMissionVission(final double splitWidth, final double contentWidth) {
    final double width = contentWidth < 1100 ? double.infinity : splitWidth;

    List<Widget> contents = [
      Container(
        width: width,
        child: Image(
          image: AssetImage("vision.png"),
        ),
      ),
      SizedBox(height: 30),
      Container(
        width: width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            HeadlineText("Mission"),
            SizedBox(height: 30,),
            TitleText("We aim to standout as the leading provider of comprehensive and innovative software platform that tackle major problems in education and financial sectors in Nigeria", textAlign: TextAlign.start,),
            SizedBox(height: 50,),
            HeadlineText("Vision"),
            SizedBox(height: 30,),
            TitleText("Accelerate Africa's transition to a robust digital economy through innovative-driven software solutions", textAlign: TextAlign.start),
          ],
        ),
      )
    ];

    if(contentWidth < 1100){
      return Column(
        children: contents,
      );
    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: contents,
    );
  }

  Widget _buildTeamMembers(final double contentWidth) {
    List<Widget> members = [
      TeamMember("KING ELISHA", "Founder/CEO", "king.png", contentWidth),
      SizedBox(height: 30,),
      TeamMember("SHEDRACH ELURIHU", "Co-Founder/Designer", "shedrach.jpeg", contentWidth)
    ];

    if(contentWidth < 1100){
      return Column(
        children: members,
      );
    }
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: members,
    );
  }
}

class TeamMember extends StatelessWidget {
  final String fullName;
  final String title;
  final String imageUrl;
  final double contentWidth;

  TeamMember(this.fullName, this.title, this.imageUrl, this.contentWidth);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: responsiveSize(contentWidth, 50), vertical: responsiveSize(contentWidth, 50)),
      // width: 200,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20)
      ),
      child: Column(
        children: <Widget>[
          CircleAvatar(
            backgroundImage: AssetImage(imageUrl),
            radius: responsiveSize(contentWidth, 100),
          ),
          SizedBox(height: responsiveSize(contentWidth, 40),),
          TitleText(fullName, color: ThemeColors.primary,),
          SizedBox(height: responsiveSize(contentWidth, 20),),
          BodyText(title, color: ThemeColors.primary,)
        ],
      ),
    );
  }
}