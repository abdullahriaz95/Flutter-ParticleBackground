import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_particle_background/flutter_particle_background.dart';

class TestScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: [
            ParticleBackground(
              backgroundColor: Colors.black,
              multiColor: false,
              particleColor: Colors.blue,
              numberOfParticles: 200,
              biggestSize: 6,
              smallestSize: 4,
              blur: true,
              allFilled: true,
              highestSpeed: 1.1,
              slowestSpeed: 0.2,
            ),
            Center(
              child: Text(
                'Welcome',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }
}
