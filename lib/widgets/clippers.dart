import 'package:flutter_web/material.dart';

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
  final double scale;

  TopBezelClipper({this.scale = 1});

  @override
  Path getClip(Size size) {
    Path path = Path();
    path.moveTo(0, size.height / 1.2 / scale);
    path.quadraticBezierTo(size.width / 1.1 / scale, size.height / 4 / scale, size.width, size.height / 1.1 / scale);
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