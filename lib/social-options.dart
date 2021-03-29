import 'package:flutter/material.dart';
// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;

  GestureDetector socialoptions(Size size, String image, String name, double font, String link) {
    return GestureDetector(
      onTap: (){
        html.window.open(link, 'new tab');
      },
          child: Container(
        //color: Colors.black,
        padding: size.width > 770 ? EdgeInsets.only(left: 20) : EdgeInsets.zero,
        child: Row(
          children: [
            Image.asset(
              image,
              height: 80,
            ),
            SizedBox(
              width: size.width > 770 ? 20 : 0,
            ),
            Text(
              name,
              style: TextStyle(
                color: Color(0xff6383A9),
                fontWeight: FontWeight.bold,
                fontSize: font,
              ),
            )
          ],
        ),
      ),
    );
  }

