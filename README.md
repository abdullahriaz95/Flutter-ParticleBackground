# flutter_particle_background

A Flutter Particle Background package that makes your app more pleasant. This simple package is for both iOS and Android. This is a simple package which fills your screen background with different coloured particles, which gives a unique and pleasant feel to the app.


## Using

[Example](https://github.com/abdullahriaz95/Flutter-ParticleBackground/blob/master/example/example_app.dart)

To use this package, add a dependency to your `pubspec.yaml` as:

    dev_dependencies:  
      flutter_test:  
        sdk: flutter
      flutter_particle_background: ^1.0.0


## How to Use

Simply just use the `ParticleBackground()` widget. Some of the examples are given below.

### Example 1
Simply use ParticleBackground() without any parameters for default values.

    class TestScreen extends StatelessWidget {  
      @override  
      Widget build(BuildContext context) {  
        return MaterialApp(  
          home: Scaffold(  
            body: Stack(  
              children: [  
                ParticleBackground(),  
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

    
### Example 2
Simply use ParticleBackground() with different parameters as you like.

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

   
## Parameters
backgroundColor - dart Color  
			    multiColor - bool,  
			    particleColor - dart Color
			    numberOfParticles - int,  
			    biggestSize - int,  
			    smallestSize - int,  
			    blur - bool,  
			    allFilled - bool,  
			    highestSpeed - double,  
			    slowestSpeed - double,
