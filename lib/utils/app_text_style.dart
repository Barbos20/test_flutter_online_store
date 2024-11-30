import 'package:flutter/material.dart';

class AppTextStyles {
  static const inter500 = TextStyle(
    fontFamily: 'inter',
    fontWeight: FontWeight.w500,
    fontSize: 12,
  );

  static const montserrat500 = TextStyle(
    fontFamily: 'montserrat',
    fontWeight: FontWeight.w500,
    fontSize: 16,
    color: Colors.white,
  );

  static const montserrat600 = TextStyle(
    fontFamily: 'montserrat',
    fontWeight: FontWeight.w600,
    fontSize: 16,
    color: Colors.black,
  );

  static const raleway700 = TextStyle(
    fontFamily: 'raleway',
    fontWeight: FontWeight.w700,
    fontSize: 16,
    color: Colors.black,
  );
  static const raleway600 = TextStyle(
    fontFamily: 'raleway',
    fontWeight: FontWeight.w600,
    fontSize: 12,
    color: Colors.white,
  );

  static const raleway500 = TextStyle(
    fontFamily: 'raleway',
    fontWeight: FontWeight.w500,
    fontSize: 10,
    color: Colors.white,
  );

  static const velaSans600 = TextStyle(
    fontFamily: 'vela-sans',
    fontWeight: FontWeight.w600,
    fontSize: 35.05,
    color: Colors.white,
  );

  static const velaSans400 = TextStyle(
    fontFamily: 'vela-sans',
    fontWeight: FontWeight.w400,
    fontSize: 16,
    color: Colors.white,
  );

  static TextStyle customStyle({
    required TextStyle baseStyle,
    double? fontSize,
    Color? color,
    FontWeight? fontWeight,
  }) {
    return baseStyle.copyWith(
      fontSize: fontSize,
      color: color,
      fontWeight: fontWeight,
    );
  }
}
