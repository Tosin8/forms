import 'package:flutter/material.dart';
import 'package:forms/widgets/auth_form/constant.dart';

class BackgroundPainter extends CustomPainter {
  BackgroundPainter({required Animation<double> animation})
      : bluePaint = Paint()
          ..color = lightBlue
          ..style = PaintingStyle.fill,
        greyPaint = Paint()
          ..color = darkBlue
          ..style = PaintingStyle.fill,
        orangePaint = Paint()
          ..color = orange
          ..style = PaintingStyle.fill,
        super(repaint : animation);

  final Paint bluePaint;
  final Paint greyPaint;
  final Paint orangePaint;

  @override
  void paint(Canvas canvas, Size size) {
    print('painting');
    paintBlue(canvas, size);

    //canvas.drawPaint(Paint()..color = darkOrange);
    // TODO: implement paint
  }

  void paintBlue(Canvas canvas, Size size) {
    final path = Path();
    path.moveTo(size.width, size.height / 2);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);
    // path.quadraticBezierTo(size.width / 2, 0, size.width, size.height / 2);
    _addPointsToPath(path, [
      Point(0, 0),
      Point(size.width / 2, size.height / 2),
      Point(size.width, size.height / 2)
    ]);

    canvas.drawPath(path, bluePaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }

  void _addPointsToPath(Path path, List<Point> points) {
    if (points.length < 3) {
      throw UnsupportedError('Need three or more points to create a path');
    }

    for (var i = 0; i < points.length - 2; i++) {
      final xc = (points[i].x + points[i + 1].x) / 2;
      final yc = (points[i].y + points[i + 1].y) / 2;
      path.quadraticBezierTo(points[i].x, points[i].y, xc, yc);
    }

    // connect the last two points
    path.quadraticBezierTo(
        points[points.length - 2].x,
        points[points.length - 2].y,
        points[points.length - 1].x,
        points[points.length - 1].y);
  }
}

class Point {
  final double x;
  final double y;

  Point(this.x, this.y);
}
