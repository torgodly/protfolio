import 'dart:ui';
import 'package:flutter/material.dart';

  Center glassbannel(Size size) {
    return Center(
      child: ClipRRect(
                    borderRadius: BorderRadius.circular(36),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaY: 6, sigmaX: 6), 
                      child: Container(
                        //margin: EdgeInsets.only(bottom: size.height * 0.03, top: size.height * 0.03,right: size.width > 540 ? size.width * 0.2 : size.width * 0.1,left: size.width > 540 ? size.width * 0.2 : size.width * 0.1,),
                        padding: EdgeInsets.only(
                            top: 50, left: size.width > 770 ? 300 : 200),
                         height: size.height * 0.94,
                         width: size.width > 770? size.width * 0.6 : size.width * 0.8,
                        decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            color: Colors.white.withOpacity(0.5),
                            borderRadius: BorderRadius.circular(36)),
                      ),
                    ),
                  ),
    );
  }