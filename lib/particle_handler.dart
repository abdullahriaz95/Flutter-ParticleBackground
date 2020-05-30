import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_particle_background/configuration.dart';
import 'package:flutter_particle_background/palette_colors.dart';
import 'package:flutter_particle_background/particle.dart';

import 'rnd.dart';

class ParticleHandler with ChangeNotifier {
  int numOfParticles;
  List<Particle> particles;
  double width;
  double height;
  Configuration configuration;

  ParticleHandler({
    Size size,
    this.configuration,
  }) {
    numOfParticles = configuration.numberOfParticles;
    particles = List<Particle>(numOfParticles);
    setSize(size);
  }

  void init() {
    for (int i = 0; i < numOfParticles; i++) {
      //Show random color here
//      var color = Rnd.getItem(palette.components);
      var color;
      if (configuration.multiColor) {
        color = PaletteColors.getRandomColor();
      } else {
        color = configuration.particleColor;
      }
      particles[i] = Particle(color: color);
      resetParticle(i);
    }
  }

  Particle resetParticle(int i) {
    Particle p = particles[i];
    p.size = p.life = 0;
    p.lifeLeft = Rnd.getDouble(200, 500);
    p.x = Random().nextInt(width.toInt()).toDouble();
    p.y = Random().nextInt(height.toInt()).toDouble();
    return p;
  }

  void setSize(Size size) {
    width = size.width;
    height = size.height;
    init();
  }

  void tick() {
    notifyListeners();
  }
}
