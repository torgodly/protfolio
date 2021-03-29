import 'package:flutter/material.dart';
import 'package:profolio_torgodly/social-options.dart'; 
  
  // ignore: non_constant_identifier_names
  Positioned profile_glass(Size size, {String name, String username, String image, List<Widget> widget }) {
    return Positioned(
      bottom: size.height * 0.03,
      top: size.height * 0.03,
      right: size.width > 700 ? size.width * 0.55 : size.width * 0.4,
      left: size.width > 770 ? size.width * 0.2 : size.width * 0.1,
      child: Container(
        padding: EdgeInsets.only(top: 50),
        height: size.height * 0.94,
        width: size.width,
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
                backgroundImage: AssetImage(image),
                radius: size.width > 415 ? 50 : 40,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                name,
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
                  "@$username",
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
              socialoptions(size, "assets/github.png", "GitHub", 25,"https://github.com/torgodly/"),
              socialoptions(size,"assets/facebook.png","Facebook",size.width > 770 ? 25 : 24,"https://www.facebook.com/torgodly/"),
              socialoptions(size, "assets/twitter.png", "twitter", 25,"https://twitter.com/torgodly/"),
              socialoptions(size,"assets/resume.png","my resume", size.width > 770 ? 25 : 21.5,"https://drive.google.com/file/d/1mZVL6rsnIi7pW-9kyIWvBaFFPXGhHeFt/view?usp=sharing"),
            ],
          ),
        ),
      ),
    );
  }