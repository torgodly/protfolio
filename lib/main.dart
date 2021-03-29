import 'dart:ui';
import 'package:profolio_torgodly/profile_panel.dart';
import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:profolio_torgodly/background_shapes.dart';
import 'package:profolio_torgodly/glass_panel.dart';

void main() => runApp(MaterialApp(
    title: "Profolio 'torgodly' - Abdullah al-hajj",
    debugShowCheckedModeBanner: false,
    home:
        AnimatedSplashScreen(splash: Image.asset("assets/animation_profolio.gif"), nextScreen: Home())
    ));

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    print(size.width);
    print(size.height);
    return Scaffold(
      body: Container(
          height: size.height,
          width: size.width,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Color(0xff29F29B), Color(0xff02A1F9)])),
          child: Stack(
            children: [
              backshapes(size, top: 30, left: -100, bottom: null, right: null),
              backshapes(size, top: null, left: null, bottom: 30, right: -100),
              glassbannel(size),
              profile_glass(size, name: "Abdullah AL-Hajj", username: "torgodly" , image: "assets/me.jpg",)
            ],
          )),
    );
  }
}