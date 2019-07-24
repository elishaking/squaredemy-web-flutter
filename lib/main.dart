import 'package:flutter_web/material.dart';
import 'package:squaredemy_web/global/styles.dart';
import 'package:squaredemy_web/pages/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Squaredemy',
      theme: ThemeData(
        fontFamily: "Lato",
        primaryColor: Color.fromRGBO(45, 63, 97, 1),
      ),
      home: HomePage(),
    );
  }
}
