import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_particle_background/particle.dart';
import 'package:flutter_particle_background/particle_handler.dart';
import 'rnd.dart';

class ParticleBackgroundHandler extends ParticleHandler {
  ParticleBackgroundHandler(Size size) : super(size: size);

  @override
  void tick() {
    // Reset particles once they are invisible or at the edge.

    particles.asMap().forEach((i, p) {

//      if(Rnd.getBool()){
//        p.x = p.vx ;
//        p.y = p.vy;
//      }else{
//        p.x -= p.vx ;
//        p.y -= p.vy;
//      }

    if(p.plusminus){
      p.x += p.vx ;
      p.y += p.vy;
    }else{

      p.x -= p.vx ;
      p.y -= p.vy;
    }


      p.lifeLeft = p.lifeLeft-1;
//      p.lifeLeft = _getDistanceFromTop(p);

      print(p.lifeLeft);
      // Gradually reduce the size of all particles.
      if (p.lifeLeft < 400) {
        p.size -= p.size * .0035;
      }

      // Reset particles once they are invisible or at the edge.
      if (p.lifeLeft <= 0 || p.size <= .5) {
        resetParticle(i);
        _activateParticle(p);
      }
    });
  }

  void _activateParticle(Particle p) {
//    p.x = Rnd.getDouble(spawnArea.left, spawnArea.right);
//    p.y = Rnd.getDouble(spawnArea.top, spawnArea.bottom);
    p.isFilled = Rnd.getBool();
    p.size = Rnd.getDouble(3, 8);
    p.life = Rnd.getDouble(.5, .55);

//    p.isFlowing = false;
//    p.distFrac = 0;
//
//    p.distribution = Rnd.getInt(1, particleDistributions[2]);
//
//    if (p.distribution < particleDistributions[0]) {
//      p.type = ParticleType.hour;
//    } else if (p.distribution < particleDistributions[1]) {
//      p.type = ParticleType.minute;
//    } else {
//      p.type = ParticleType.noise;
//    }
//
//    double angle;
//
//    switch (p.type) {
//      case ParticleType.hour:
//        angle = _getHourRadians();
//        p.life = Rnd.getDouble(.5, .55);
//        p.size = sizeMin * .010;
//        p.isFlowing = Rnd.ratio > .85;
//        p.color = palette.components[palette.components.length - 1];
//        break;
//
//      case ParticleType.minute:
//        angle = _getMinuteRadians();
//        p.life = Rnd.getDouble(.68, .73);
//        p.size = sizeMin * .008;
//        p.isFlowing = Rnd.ratio > .6;
//        p.color = palette.components[palette.components.length - 1];
//        break;
//
//      case ParticleType.noise:
//      // Find a random angle while avoiding clutter at the hour & minute hands.
//        var am = _getMinuteRadians();
//        var ah = _getHourRadians() % (pi * 2);
//        var d = pi / 18;
//
//        // Probably not the most efficient solution right here.
//        do {
//          angle = Rnd.ratio * pi * 2;
//        } while (_isBetween(angle, am - d, am + d) ||
//            _isBetween(angle, ah - d, ah + d));
//
//        p.life = Rnd.getDouble(0.75, .8);
//        p.size = sizeMin *
//            (Rnd.ratio > .8
//                ? Rnd.getDouble(.0015, .003)
//                : Rnd.getDouble(.002, .006));
//        break;
//    }

    // Particle movement vector.

    p.vx = sin(Rnd.getInt(-200, 200));
//    p.vx = sin(-500);
    p.vy = cos(Rnd.getInt(-200, 200));
//    p.vy = cos(-100);

    p.plusminus = (Rnd.getBool());

    // Particle movement angle.
//    p.a = atan2(p.vy, p.vx) + pi;

    // Add some speed randomeness.
//    double v = p.type == ParticleType.noise
//        ? Rnd.getDouble(.5, 1)
//        : Rnd.getDouble(.3, .4);

    double v = Rnd.getDouble(.2, 1);
    p.vx *= v;
    p.vy *= v;
  }

  double _getDistanceFromTop(Particle p) {
    var a = pow(p.x - p.x, 2);
    var b = pow(0 - p.y, 2);
    return sqrt(a + b);
  }
}
