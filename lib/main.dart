//import 'dart:async';
//import 'dart:convert';
//import 'dart:ui';
//
//import 'package:flutter/material.dart';
//import 'package:flutter_particle_background/scene.dart';
//
//
//class MyApp extends StatelessWidget {
//  // This widget is the root of your application.
//  @override
//  Widget build(BuildContext context) {
//    return MyHomePage();
//  }
//}
//
//class MyHomePage extends StatefulWidget {
//  @override
//  _MyHomePageState createState() => _MyHomePageState();
//}
//
//class _MyHomePageState extends State<MyHomePage>
//    with SingleTickerProviderStateMixin {
//  Animation animation;
//  Timer _timer;
//  AnimationController _animationController;
//
//  @override
//  void initState() {
//    super.initState();
////    _updateTime();
//    _animationController =
//        AnimationController(vsync: this, duration: Duration(seconds: 60));
//    animation = Tween<double>(begin: 0, end: 255)
//        .chain(CurveTween(curve: Curves.elasticOut))
//        .animate(_animationController)
//          ..addListener(() {
//            if (animation.isCompleted) _animationController.repeat();
//
//            setState(() {});
//          });
//
//    _animationController.forward();
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    return LayoutBuilder(
//      builder: (context, constraints) {
//        return Stack(
//          children: [
//            Scene(constraints.biggest),
////              Positioned.fill(
////                child: BackdropFilter(
////                  filter: ImageFilter.blur(sigmaY: 5, sigmaX: 5),
////                  child: Container(
////                    color: Colors.black.withOpacity(0),
////                  ),
////                ),
////              ),
//
//          ],
//        );
//      },
//    );
//  }
//}
