import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_particle_background/particle_handler.dart';

class ParticlePainter extends CustomPainter {
  ParticleHandler particleHandler;

  ParticlePainter({this.particleHandler}) : super(repaint: particleHandler);

  @override
  void paint(Canvas canvas, Size size) {
    particleHandler.particles.forEach((p) {
      var pos = Offset(p.x, p.y);

      var paint = Paint()
        ..color = p.color
        ..strokeWidth = p.size * .2
        ..style = p.isFilled ? PaintingStyle.fill : PaintingStyle.stroke;

      if (p.isFilled) {
        canvas.drawCircle(pos, p.size / 1.2, paint);
      } else {
        canvas.drawCircle(pos, p.size / 1.2, paint);
      }
    });
  }

  @override
  bool shouldRepaint(ParticlePainter oldDelegate) {
    return false;
  }
}
