import 'package:flutter_web/material.dart';
import 'package:squaredemy_web/widgets/nav.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(45, 63, 97, 1),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.1, vertical: 20),
        child: Column(
          children: <Widget>[
            NavBar()
          ],
        ),
      ),
    );
  }
}
