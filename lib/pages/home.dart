import 'package:flutter_web/material.dart';
import 'package:squaredemy_web/global/dims.dart';
import 'package:squaredemy_web/global/styles.dart';
import 'package:squaredemy_web/widgets/buttons.dart';
import 'package:squaredemy_web/widgets/clippers.dart';
import 'package:squaredemy_web/widgets/forms/subscribe_form.dart';
import 'package:squaredemy_web/widgets/nav.dart';
import 'package:squaredemy_web/widgets/forms/testing_form.dart';
import 'package:squaredemy_web/widgets/text.dart';

class HomePage extends StatelessWidget {
  final GlobalKey _vpKey = GlobalKey();
  // final GlobalKey _allDevicesKey = GlobalKey();
  // final GlobalKey _joinTestingKey = GlobalKey();
  // final GlobalKey _appFeaturesKey = GlobalKey();
  final GlobalKey _joinTestingFormKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    final double splitWidth = MediaQuery.of(context).size.width / 2 - MediaQuery.of(context).size.width * 0.1;
    final double contentHeight = MediaQuery.of(context).size.height;
    final double contentWidth = MediaQuery.of(context).size.width;

    final contentPadding = EdgeInsets.symmetric(horizontal: contentWidth * 0.1, vertical: responsiveSize(contentWidth, 50));
    final buttonPadding = EdgeInsets.symmetric(horizontal: responsiveSize(contentWidth, 85), vertical: responsiveSize(contentWidth, 30));

    return Scaffold(
      backgroundColor: ThemeColors.primary,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            NavBar(contentPadding),
            /// [vp] [section]
            Container(
              key: _vpKey,
              padding: contentPadding,
              height: contentWidth < 1100 ? contentHeight * 2 : contentHeight * 0.9,
              child: _buildVPSection(context, contentWidth, contentHeight * 0.9, splitWidth, buttonPadding),
            ),

            /// [all-devices] [section]
            Container(
              padding: contentPadding,
              height: contentHeight,
              width: double.infinity,
              color: ThemeColors.primaryLight,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image(
                    height: responsiveSize(contentWidth, 400),
                    image: AssetImage("all-devices.png"),
                  ),
                  SizedBox(height: responsiveSize(contentWidth, 80),),
                  HeadlineText("Available On All Screen sizes"),
                  SizedBox(height: responsiveSize(contentWidth, 40),),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Flexible(
                        child: RaisedButton(
                          elevation: 0,
                          padding: buttonPadding,
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
            /// [diagonal] [clipper]
            ClipPath(
              clipper: DiagonalCutClipper(),
              child: Container(
                height: contentHeight * 0.1,
                width: double.infinity,
                color: Color.fromRGBO(48, 74, 123, 1),
              ),
            ),

            /// [join-testing] [section]
            Container(
              height: contentWidth < 550 ? contentHeight * 1.2 : contentHeight,
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
                    padding: contentPadding,
                    width: double.infinity,
                    alignment: Alignment.center,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image(
                          image: AssetImage("phone-2.png"),
                          height: responsiveSize(contentWidth, 500),
                        ),
                        SizedBox(height: 30,),
                        HeadlineText("Simple and Smart",),
                        SizedBox(height: 30,),
                        TitleText("Let's Teach Squaredbot"),
                        SizedBox(height: 90,),
                        PrimaryButton("Join Testing",
                        onPressed: (){
                          Scrollable.ensureVisible(_joinTestingFormKey.currentContext);
                        },)
                      ],
                    ),
                  )
                ],
              ),
            ),

            /// [app-features] [section]
            Container(
              height: _appFeaturesContainerHeight(contentWidth, contentHeight),
              padding: EdgeInsets.only(top: contentPadding.top, left: contentPadding.left, bottom: 0, right: contentPadding.right),
              color: Color.fromRGBO(20, 33, 57, 1),
              alignment: Alignment.center,
              child: _buildAppFeaturesWidget(contentWidth),
            ),
          
            /// [testing-form] [section]
            Container(
              key: _joinTestingFormKey,
              height: contentHeight * 2,
              padding: contentPadding,
              child: Column(
                children: <Widget>[
                  // SizedBox(height: 230,),
                  HeadlineText("Help Squaredbot"),
                  // SizedBox(height: 30,),
                  // BodyText("Squaredbot is "),
                  SizedBox(height: 50,),
                  TestingForm()
                ],
              ),          
            ),

            /// [subscribe-form] [section]
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
                  SubscribeForm(contentWidth, splitWidth, buttonPadding)
                ],
              ),
            ),
          
            /// [Footer] [section]
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

  Widget _buildVPSection(BuildContext context, final double contentWidth, final double height, double splitWidth, final buttonPadding) {
    bool isMobile = contentWidth < 1100;
    if(isMobile) splitWidth = contentWidth - contentWidth * 0.1;

    List<Widget> contents = [
      Container(
        width: splitWidth,
        height: height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            HeadlineText("The Most Productive Way to Learn", textAlign: TextAlign.start,),
            SizedBox(height: responsiveSize(contentWidth, 30),),
            TitleText("Squaredemy is an AI-driven learning platform that enhances learning productivity through customized curriculums that are generated based on fun and engaging interactions with the user", textAlign: TextAlign.start,),
            SizedBox(height: responsiveSize(contentWidth, 90),),
            Row(
              children: <Widget>[
                RaisedButton(
                  child: ButtonText("Join Testing",),
                  elevation: 0,
                  onPressed: (){
                    Scrollable.ensureVisible(_joinTestingFormKey.currentContext);
                  },
                  color: Color.fromRGBO(34, 209, 164, 1),
                  padding: buttonPadding,
                ),
              ],
            ),
            // SizedBox(height: 90,),
          ],
        ),
      ),
      Container(
        width: splitWidth,
        height: height,
        // alignment: Alignment.centerRight,
        child: Image(
          image: AssetImage("phone.png"),
        ),
      )
    ];

    return isMobile  ? Column(
      children: contents,
    ) : Row(
      children: contents,
    );
  }

  double _appFeaturesContainerHeight(final double contentWidth, final double contentHeight){
    if(contentWidth < 1100) return contentHeight * 2.3;
    if(contentWidth < 1500) return contentHeight * 1.5;

    return contentHeight;
  }
  
  Widget _buildAppFeaturesWidget(final double contentWidth){
    if(contentWidth < 1100){
      return Column(
        children: <Widget>[
          AppFeature("Artificial Intelligence", "Squaredemy uses AI to create the perfect learning experience", "ai.png", isMobile: true,),
          SizedBox(height: 20,),
          AppFeature("Comprehensive Feedback", "Squaredemy keeps track of your entire learning progress and gives comprehensive feedback on areas of strength and potential improvement", "progress.png", isMobile: true,),
          SizedBox(height: 20,),
          AppFeature("Valuable Content", "Squaredemy gives you access to a broad range of valuable learning resources", "library.png", isMobile: true,)
        ],
      );
    }

    if(contentWidth < 1500){
      return Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              AppFeature("Artificial Intelligence", "Squaredemy uses AI to create the perfect learning experience", "ai.png"),
              AppFeature("Comprehensive Feedback", "Squaredemy keeps track of your entire learning progress and gives comprehensive feedback on areas of strength and potential improvement", "progress.png"),
            ],
          ),
          AppFeature("Valuable Content", "Squaredemy gives you access to a broad range of valuable learning resources", "library.png")
        ],
      );
    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        AppFeature("Artificial Intelligence", "Squaredemy uses AI to create the perfect learning experience", "ai.png"),
        AppFeature("Comprehensive Feedback", "Squaredemy keeps track of your entire learning progress and gives comprehensive feedback on areas of strength and potential improvement", "progress.png"),
        AppFeature("Valuable Content", "Squaredemy gives you access to a broad range of valuable learning resources", "library.png")
      ],
    );
  }

  // GridView _buildAppFeaturesGrid(double contentHeight, double contentWidth) {
  //   double aspectRatio = contentHeight / contentWidth;
    

  //   return GridView.count(
  //     shrinkWrap: true,
  //     crossAxisSpacing: 100,
  //     crossAxisCount: 3,
  //     childAspectRatio: aspectRatio,
  //     children: <Widget>[
  //       AppFeature("Artificial Intelligence", "Squaredemy uses AI to create the perfect learning experience", "ai.png"),
  //       AppFeature("Comprehensive Feedback", "Squaredemy keeps track of your entire learning progress and gives comprehensive feedback on areas of strength and potential improvement", "progress.png"),
  //       AppFeature("Valuable Content", "Squaredemy gives you access to a broad range of valuable learning resources", "library.png")
  //     ],
  //   );
  // }
}

class AppFeature extends StatelessWidget {
  final String title;
  final String details;
  final String imageUrl;
  final bool isMobile;

  AppFeature(this.title, this.details, this.imageUrl, {this.isMobile = false});

  @override
  Widget build(BuildContext context) {
    final double contentWidth = MediaQuery.of(context).size.width;
    final double contentHeight = MediaQuery.of(context).size.height;

    return Container(
      width: _appFeatureWidth(contentWidth),
      height: isMobile ? null : contentHeight / 1.4,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Container(
            height: isMobile ? null : 300,
            child: Image(
              image: AssetImage(imageUrl),
              height: 270,
            ),
          ),
          SizedBox(height: responsiveSize(contentWidth, 80),),
          TitleText(title, textAlign: TextAlign.center,),
          SizedBox(height: responsiveSize(contentWidth, 20),),
          Container(
            height: isMobile ? null : 40, //todo: adjust based on screen size
            child: BodyText(details, textAlign: TextAlign.center,)
          ),
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
    );
  }

  double _appFeatureWidth(final double contentWidth){
    if(contentWidth < 1100) return contentWidth / 1.3;
    if(contentWidth < 1500) return contentWidth / 3;

    return contentWidth / 4;
  }
}
