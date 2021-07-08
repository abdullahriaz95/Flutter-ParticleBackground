import 'package:flutter/material.dart';

class Configuration {
  bool multiColor;
  Color particleColor;
  Color backgroundColor;
  int numberOfParticles;
  bool blur;
  double highestSpeed;
  double slowestSpeed;
  int biggestSize;
  int smallestSize;
  bool allFilled;
  int blurIntensity;

  Configuration(
      {required this.multiColor,
      required this.particleColor,
      required this.backgroundColor,
      required this.numberOfParticles,
      required this.blur,
      required this.highestSpeed,
      required this.slowestSpeed,
      required this.biggestSize,
      required this.smallestSize,
      required this.blurIntensity,
      required this.allFilled});
}
