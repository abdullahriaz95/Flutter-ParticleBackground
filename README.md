# flutter_particle_background

A Flutter Particle Background package that makes your app more pleasant. This simple package is for both iOS and Android. This is a simple package which fills your screen background with different coloured particles, which gives a unique and pleasant feel to the app.


## Using

[Example](https://github.com/abdullahriaz95/Flutter-ParticleBackground/blob/master/example/example_app.dart)

To use this package, add a dependency to your `pubspec.yaml` as:

    dev_dependencies:  
      flutter_test:  
        sdk: flutter
      flutter_particle_background: ^0.0.1


## How to Use

Simply just use the `ParticleBackground()` widget.
  

      class TestScreen extends StatelessWidget {  
          @override  
          Widget build(BuildContext context) {  
            return MaterialApp(  
                home: Scaffold(  
                    body: ParticleBackground()));  
          }  
        }


