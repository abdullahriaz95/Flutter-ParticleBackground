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
Simply use **ParticleBackground()** without any parameters for default values.

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
				    style: TextStyle(fontSize: 20, 
				    fontWeight:FontWeight.bold),  
			      ),  
			    )  
              ],  
		    ),  
		  ),  
	    );  
      }  
    }
    
### Example 2
Simply use **ParticleBackground()** with different parameters as you like.

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
    		    blurIntensity: 8,
    		    ),  
    		    Center(  
                  child: Text(  
                  'Welcome',  
    		      style: TextStyle(fontSize: 20, 
    		      fontWeight: FontWeight.bold),  
    			      ),  
    			     )  
    	           ],  
    		      ),  
    		    ),  
    	      );  
    		}  
    	  }

   
## Parameters

 1. backgroundColor - dart color   
 2. multiColor - bool
 3. particleColor - dart color 
 4. numberOfParticles - int 
 5. biggestSize - int 
 6. smallestSize - int   
 7. blur - bool
 8. allFilled - bool
 9. highestSpeed - double
 10. slowestSpeed - double
 11. blurIntensity - int

## Showcase
These animations may not appear smooth in the following images, but these are smooth when implemented.

<img src="screenshots/1.gif" height="600em" /> <img src="screenshots/2.gif" height="600em" /> <img src="screenshots/3.gif" height="600em" />
<img src="screenshots/4.gif" height="600em" /> <img src="screenshots/5.gif" height="600em" />
