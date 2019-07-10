import 'package:flutter_web/material.dart';
import 'package:squaredemy_web/global/styles.dart';
import 'package:squaredemy_web/widgets/buttons.dart';
import 'package:squaredemy_web/widgets/clippers.dart';
import 'package:squaredemy_web/widgets/nav.dart';
import 'package:squaredemy_web/widgets/forms/testing_form.dart';
import 'package:squaredemy_web/widgets/text.dart';

class HomePage extends StatelessWidget {

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
              padding: contentPadding,
              height: contentHeight,
              width: double.infinity,
              color: ThemeColors.primaryLight,
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
                  ),
                  Container(
                    width: double.infinity,
                    alignment: Alignment.center,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image(
                          image: AssetImage("phone-2.png"),
                          height: 500,
                        ),
                        SizedBox(height: 30,),
                        HeadlineText("Simple and Smart"),
                        SizedBox(height: 30,),
                        TitleText("Let's Teach Squaredbot"),
                        SizedBox(height: 90,),
                        PrimaryButton("Join Testing",
                        onPressed: (){
                          
                        },)
                      ],
                    ),
                  )
                ],
              ),
            ),

            /// [section] [4]
            Container(
              height: contentHeight,
              padding: contentPadding,
              color: Color.fromRGBO(20, 33, 57, 1),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Image(
                          image: AssetImage("ai.png"),
                        ),
                        SizedBox(height: 80,),
                        TitleText("Artificial Intelligence"),
                        SizedBox(height: 20,),
                        BodyText("Squaredemy uses AI to create the perfect learning experience"),
                        SizedBox(height: 30,),
                        FlatButton(
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              BodyText("Learn More"),
                              SizedBox(width: 10,),
                              Icon(Icons.arrow_forward_ios, color: Colors.white,)
                            ],
                          ),
                          onPressed: (){
                            
                          },
                        )
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Image(
                          image: AssetImage("progress.png"),
                        ),
                        SizedBox(height: 80,),
                        TitleText("Comprehensive Feedback"),
                        SizedBox(height: 20,),
                        BodyText("Squaredemy keeps track of your entire learning progress and gives comprehensive feedback on areas of strength and potential improvement"),
                        SizedBox(height: 30,),
                        FlatButton(
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              BodyText("Learn More"),
                              SizedBox(width: 10,),
                              Icon(Icons.arrow_forward_ios, color: Colors.white,)
                            ],
                          ),
                          onPressed: (){
                            
                          },
                        )
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Image(
                          image: AssetImage("library.png"),
                        ),
                        SizedBox(height: 80,),
                        TitleText("Valuable Content"),
                        SizedBox(height: 20,),
                        BodyText("Squaredemy gives you access to a broad range of valuable learning resources"),
                        SizedBox(height: 30,),
                        FlatButton(
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              BodyText("Learn More"),
                              SizedBox(width: 10,),
                              Icon(Icons.arrow_forward_ios, color: Colors.white,)
                            ],
                          ),
                          onPressed: (){
                            
                          },
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          
            /// [section] [5]
            Container(
              height: contentHeight * 2,
              padding: contentPadding,
              child: Column(
                children: <Widget>[
                  SizedBox(height: 230,),
                  HeadlineText("Help Squaredbot"),
                  SizedBox(height: 30,),
                  BodyText("Squaredbot is "),
                  SizedBox(height: 200,),
                  TestingForm()
                ],
              ),          
            ),

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
          
            /// [Footer]
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
          ],
        ),
      ),
    );
  }
}
