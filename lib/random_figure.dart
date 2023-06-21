import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RandomFigure extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final random = Random();
    final Paint paint = Paint()
      ..color = Color.fromRGBO(
          random.nextInt(255), random.nextInt(255), random.nextInt(255), 1);

    final Path path = Path()
      ..moveTo(
          random.nextDouble() * size.width, random.nextDouble() * size.height)
      ..quadraticBezierTo(
          random.nextDouble() * size.width,
          random.nextDouble() * size.height,
          random.nextDouble() * size.width,
          random.nextDouble() * size.height)
      ..cubicTo(random.nextDouble() * size.width,
          random.nextDouble() * size.height,
          random.nextDouble() * size.width,
          random.nextDouble() * size.height,
          random.nextDouble() * size.width,
          random.nextDouble() * size.height)
    ;

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
