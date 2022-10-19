import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:forms/widgets/auth_form/constant.dart';

class BackgroundPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    print(size);

    canvas.drawPaint(Paint()..color = darkBlue);
    // TODO: implement paint
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }
}
