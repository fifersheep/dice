import 'package:flutter/material.dart';

class DrawUserActionDivider extends CustomPainter {
  final double radius;
  final Size size;

  DrawUserActionDivider({this.radius = 80, this.size = const Size(100, 100)});

  @override
  void paint(Canvas canvas, Size size) {
    Paint brush = Paint()
      ..color = Colors.white54
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;

    canvas.drawCircle(
        Offset(
          size.width / 2,
          size.height / 2,
        ),
        radius,
        brush);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
