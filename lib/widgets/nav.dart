import 'package:flutter_web/material.dart';
import 'package:squaredemy_web/global/styles.dart';
import 'package:squaredemy_web/pages/about.dart';
import 'package:squaredemy_web/pages/home.dart';
import 'package:squaredemy_web/widgets/text.dart';

class NavBar extends StatelessWidget {
  final EdgeInsetsGeometry contentPadding;
  final GlobalKey contactFormKey;
  
  NavBar(this.contentPadding, {this.contactFormKey});

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: contentPadding,
      padding: EdgeInsets.symmetric(horizontal: contentPadding.horizontal / 2, vertical: contentPadding.vertical / 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            child: Row(
              children: <Widget>[
                Logo(),
                SizedBox(width: 20,),
                BodyText("SQUAREDEMY")
              ],
            ),
          ),
          _buildNavMenu(context)
        ],
      ),
    );
  }

  Widget _buildNavMenu(BuildContext context) {
    if(MediaQuery.of(context).size.width < 1100){
      return Container(
        child: IconButton(
          icon: Icon(Icons.menu, color: Colors.white,),
          onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(
              builder: (BuildContext context) => MobileNav(contactFormKey, contentPadding)
            ));
          },
        ),
      );  
    }

    return MenuItems(contactFormKey: contactFormKey,);
  }
}

class MenuItems extends StatelessWidget {
  final bool mobile;
  final GlobalKey contactFormKey;
  
  MenuItems({this.contactFormKey, this.mobile = false});

  @override
  Widget build(BuildContext context) {
    List<FlatButton> _menuItems = [
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
          if(contactFormKey != null){
            if(mobile) Navigator.of(context).pop();
            
            Scrollable.ensureVisible(contactFormKey.currentContext);
          } else{
            Navigator.of(context).push(MaterialPageRoute(
              builder: (BuildContext context) => AboutPage()
            ));
          }
        },
      ),
    ];

    return mobile ? Column(
      mainAxisSize: MainAxisSize.min,
      children: _menuItems,
    ) : Row(
      children: _menuItems,
    );
  }
}

class MobileNav extends StatelessWidget {
  final EdgeInsetsGeometry contentPadding;
  final GlobalKey contactFormKey;

  MobileNav(this.contactFormKey, this.contentPadding);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeColors.primary,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.symmetric(horizontal: contentPadding.right, vertical: contentPadding.right / 2),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Logo(),
                  IconButton(
                    icon: Icon(Icons.close, color: Colors.white,),
                    onPressed: (){
                      Navigator.of(context).pop();
                    },
                  )
                ],
              ),
            ),
            Container(
              child: MenuItems(contactFormKey: contactFormKey, mobile: true,),
            )
          ],
        ),
      ),
    );
  }
}

class Logo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Image(
      height: 30,
      image: AssetImage("logo_white.png"),
    );
  }
}