import 'dart:ui';
import 'package:profolio_torgodly/social-options.dart';
import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';


void main() => runApp(MaterialApp(
      title: "Profolio 'torgodly' - Abdullah al-hajj",
      debugShowCheckedModeBanner: false,
      home: AnimatedSplashScreen(splash: Image.asset("assets/animation_profolio.gif"), nextScreen: Home())
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
              Positioned(
                  top: 30,
                  left: -100,
                  child: Container(
                    height: size.height * 0.5,
                    width: size.width * 0.5,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Color(0xffAFECF1)),
                  )),
              Positioned(
                  bottom: 30,
                  right: -100,
                  child: Container(
                    height: size.height * 0.5,
                    width: size.width * 0.5,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Color(0xffAFECF1)),
                  )),
              Positioned(
                  bottom: size.height * 0.03,
                  top: size.height * 0.03,
                  right: size.width > 540 ? size.width * 0.2 : size.width * 0.1,
                  left: size.width > 540 ? size.width * 0.2 : size.width * 0.1,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(36),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaY: 6, sigmaX: 6),
                      child: Container(
                        padding: EdgeInsets.only(
                            top: 50, left: size.width > 770 ? 300 : 200),
                        // height: size.height * 0.5,
                        // width: size.width * 0.5,
                        decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            color: Colors.white.withOpacity(0.5),
                            borderRadius: BorderRadius.circular(36)),
                        // child: Column(
                        //   children: [
                        //     Container(
                        //       // color: Colors.red,
                        //       //padding: EdgeInsets.only(left: size.width > 770 ? 0 : 200),
                        //       child: Text(
                        //         "My Work",
                        //         style: TextStyle(
                        //           color: Color(0xff6383A9),
                        //           fontWeight: FontWeight.bold,
                        //           fontSize: size.width > 770 ? 50 : 25,
                        //         ),
                        //       ),
                        //     ),
                        //     SizedBox(
                        //       height: 50,
                        //     ),
                        //     Container(
                        //       width: 300,
                        //       height: 150,
                        //       padding: EdgeInsets.only(left: 5),
                        //       decoration: BoxDecoration(
                        //           shape: BoxShape.rectangle, color: Colors.white.withOpacity(0.3),
                        //           borderRadius: BorderRadius.circular(36)
                        //           ),
                        //       child: Row(
                        //         children: [
                        //           Image.asset(
                        //             "assets/app-icon.png",
                        //             height: 100,
                        //             width: 100,
                        //           ),
                        //           SizedBox(
                        //             width: 0,
                        //           ),
                        //           Column(
                        //             children: [
                        //               Container(
                        //                   padding: EdgeInsets.only(top: 25),
                        //                   child: Text(
                        //                     "wifi password changer",
                        //                     style: TextStyle(
                        //                       color: Color(0xff6383A9),
                        //                       fontWeight: FontWeight.bold,
                        //                       fontSize: 18,
                        //                     ),
                        //                   )),
                        //                   SizedBox(height: 30,),
                        //                   Container(
                        //                     width: 150,
                        //                     height: 50,
                        //                     decoration: BoxDecoration(
                        //                     color: Colors.blue,
                        //                     borderRadius: BorderRadius.circular(36)
                        //                     ),
                        //                     child: Center(child: Text("code on github", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),)),
                        //                   )
                        //             ],
                        //           )
                        //         ],
                        //       ),
                        //     )
                        //   ],
                        // ),
                      ),
                    ),
                  )),
              Positioned(
                  bottom: size.height * 0.03,
                  top: size.height * 0.03,
                  right:
                      size.width > 700 ? size.width * 0.55 : size.width * 0.4,
                  left: size.width > 770 ? size.width * 0.2 : size.width * 0.1,
                  child: Container(
                    padding: EdgeInsets.only(top: 50),
                    height: size.height * 0.94,
                    // width: size.width * 0.5,
                    decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        gradient: LinearGradient(colors: [
                          Colors.white.withOpacity(0.9),
                          Colors.white.withOpacity(0.3)
                        ]),
                        borderRadius: BorderRadius.circular(36)),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          CircleAvatar(
                            backgroundImage: AssetImage("assets/me.jpg"),
                            radius: size.width > 415 ? 50 : 40,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Abdullah Al-hajj",
                            maxLines: 1,
                            style: TextStyle(
                              color: Color(0xff6383A9),
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Center(
                            child: Text(
                              "@torgodly",
                              maxLines: 1,
                              style: TextStyle(
                                color: Color(0xff6383A9),
                                fontSize: 20,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          socialoptions(size, "assets/github.png", "GitHub", 25,
                              "https://github.com/torgodly/"),
                          socialoptions(
                              size,
                              "assets/facebook.png",
                              "Facebook",
                              size.width > 770 ? 25 : 24,
                              "https://www.facebook.com/torgodly/"),
                          socialoptions(size, "assets/twitter.png", "twitter",
                              25, "https://twitter.com/torgodly/"),
                          socialoptions(
                              size,
                              "assets/resume.png",
                              "my resume",
                              size.width > 770 ? 25 : 21.5,
                              "https://drive.google.com/file/d/1mZVL6rsnIi7pW-9kyIWvBaFFPXGhHeFt/view?usp=sharing"), 
                        ],
                      ),
                    ),
                  ))
            ],
          )),
    );
  }
}
