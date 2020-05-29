import 'package:flutter/material.dart';

class Particle {
  double size;
  double x;
  double y;
  double life;
  double lifeLeft;
  Color color;
  bool isFilled;
  double vx;
  double vy;
  bool plusminus;

  Particle({
    this.size = 0,
    this.x = 0,
    this.y = 0,
    this.color = Colors.black,
    this.life = 0,
    this.lifeLeft = 0,
    this.isFilled = false,
    this.vx = 0,
    this.vy =0,
    this.plusminus = false,

  });
}
