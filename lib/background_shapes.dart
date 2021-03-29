import 'package:flutter/material.dart';

  Positioned backshapes(Size size, {double top, double left, double bottom, double right}) {
    return Positioned(
                top: top,
                left: left,
                bottom: bottom,
                right: right,
                child: Container(
                  height: size.height * 0.5,
                  width: size.width * 0.5,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Color(0xffAFECF1)),
                ));
  }



