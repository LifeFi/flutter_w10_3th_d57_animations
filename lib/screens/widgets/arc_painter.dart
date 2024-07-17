import 'dart:math';

import 'package:flutter/material.dart';

class ArcPainter extends CustomPainter {
  final Color color;
  final double progress;
  final bool isResting;

  ArcPainter({
    required this.color,
    required this.progress,
    required this.isResting,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(
      size.width / 2,
      size.height / 2,
    );

    const startingAngle = -0.5 * pi;

    final circlePaint = Paint()
      ..color = isResting ? Colors.black.withOpacity(0.3) : Colors.grey.shade200
      ..style = PaintingStyle.stroke
      ..strokeWidth = 26;

    final circleRadius = size.width / 2;

    canvas.drawCircle(
      center,
      circleRadius,
      circlePaint,
    );

    final arcRect = Rect.fromCircle(
      center: center,
      radius: circleRadius,
    );

    final arcPainter = Paint()
      ..color = isResting ? Colors.grey.shade200 : color
      ..style = PaintingStyle.stroke
      ..strokeWidth = isResting ? 26 : 20
      ..strokeCap = StrokeCap.round;

    canvas.drawArc(
      arcRect,
      startingAngle,
      progress * pi,
      false,
      arcPainter,
    );
    //
    //
  }

  @override
  bool shouldRepaint(covariant ArcPainter oldDelegate) {
    return oldDelegate.progress != progress;
  }
}
