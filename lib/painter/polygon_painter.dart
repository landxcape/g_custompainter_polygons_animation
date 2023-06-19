import 'dart:math' show cos, pi, sin;

import 'package:flutter/material.dart';

class PolygonPainter extends CustomPainter {
  PolygonPainter({
    required this.sides,
  });
  final int sides;

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.deepPurple
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 3;

    final path = Path();

    final center = Offset(size.width / 2, size.width / 2);
    final angle = (2 * pi) / sides;
    final angles = List.generate(sides, (index) => (index + 1) * angle);
    final radius = size.width / 2;

    path.moveTo(
      center.dx + radius * cos(0),
      center.dy + radius * sin(0),
    );

    for (final angle in angles) {
      path.lineTo(
        center.dx + radius * cos(angle),
        center.dy + radius * sin(angle),
      );
    }

    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => oldDelegate is PolygonPainter && oldDelegate.sides != sides;
}
