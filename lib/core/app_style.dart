import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppStyle {
  static TextStyle stlyle18Bold = TextStyle(
    fontSize: 18.sp, // Adjust size based on your design
    fontWeight: FontWeight.bold,
    color: Colors.black, // Change color as needed
  );

  static TextStyle style15Semibold = TextStyle(
    fontSize: 15.sp, // Adjust size based on your design
    fontWeight: FontWeight.w600,
    color: Colors.grey[700], // Change color as needed
  );

  static TextStyle style14Semibold = const TextStyle(
    color: Color(0xFF01261C),
    fontSize: 14,
    fontFamily: 'Inter',
    fontWeight: FontWeight.bold,
    height: 0,
    letterSpacing: 0.56,
  );
}
