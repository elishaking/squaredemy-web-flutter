import 'package:flutter_web/material.dart';
import 'package:squaredemy_web/global/dims.dart';
import 'package:squaredemy_web/global/styles.dart';
import 'package:squaredemy_web/widgets/nav.dart';
import 'package:squaredemy_web/widgets/text.dart';

class BlogPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double contentHeight = MediaQuery.of(context).size.height;
    final double contentWidth = MediaQuery.of(context).size.width;
    final double splitWidth = contentWidth * 0.4;

    final contentPadding = EdgeInsets.symmetric(horizontal: contentWidth * 0.1, vertical: responsiveSize(contentWidth, 50));
    final buttonPadding = EdgeInsets.symmetric(horizontal: responsiveSize(contentWidth, 85), vertical: responsiveSize(contentWidth, 30));

    return Scaffold(
      backgroundColor: ThemeColors.primaryLight,
      body: ListView(
        children: <Widget>[
          /// [intro] [section]
          Container(
            color: ThemeColors.primaryDark,
            padding: contentPadding,
            child: Column(
              children: <Widget>[
                NavBar(contentPadding, applyPadding: false,),
                SizedBox(height: 80,),
                TitleText("ARTICLES"),
                SizedBox(height: 20,),
                HeadlineText("Inside Squaredemy"),
                SizedBox(height: 80,),
              ],
            ),
          ),

          Container(
            padding: contentPadding,
            child: Column(
              children: <Widget>[
                SizedBox(height: 80,),
                Row(
                  children: <Widget>[
                    Article()
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class Article extends StatelessWidget {
  const Article({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 270,
      child: FlatButton(
        padding: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image(
                image: AssetImage("blog/squaredbot.png"),
                // width: 200,
              ),
            ),
            SizedBox(height: 20,),
            BodyText("The most productive way to Learn", textAlign: TextAlign.center,)
          ],
        ),
        onPressed: (){
          
        },
      ),
    );
  }
}