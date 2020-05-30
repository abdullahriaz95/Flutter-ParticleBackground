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
      {this.multiColor,
      this.particleColor,
      this.backgroundColor,
      this.numberOfParticles,
      this.blur,
      this.highestSpeed,
      this.slowestSpeed,
      this.biggestSize,
      this.smallestSize,
      this.blurIntensity,
      this.allFilled});
}
