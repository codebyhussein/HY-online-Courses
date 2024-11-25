import 'package:flutter/material.dart';
import 'dart:math' as math;

class ArcPainter extends CustomPainter {
  final int tapCount;

  ArcPainter(this.tapCount);

  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);
    const radius = 50.0; // Outer radius for the arc

    // Paint for the arcs
    final arcPaint = Paint()
      ..color = const Color(0xff2ECC71) // Green color
      ..style = PaintingStyle.stroke // Stroke for the arc
      ..strokeWidth = 6.0; // Increased thickness for a larger arc appearance

    // Define the bounding box for the arcs
    final rect = Rect.fromCircle(center: center, radius: radius);

    // Initialize starting angle
    double startAngle = -math.pi / 2; // Start at the top of the circle

    // Draw arcs dynamically based on tapCount
    for (int i = 0; i < tapCount; i++) {
      const sweepAngle = math.pi / 2; // Larger sweep angle for bigger arcs
      canvas.drawArc(
        rect,
        startAngle, // Start where the previous arc ended
        sweepAngle, // Size of the arc
        false, // Ensure the arc is not filled
        arcPaint,
      );

      startAngle += sweepAngle; // No gap between arcs
      //  startAngle += sweepAngle + math.pi / 12; // Add a gap between arcs
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
