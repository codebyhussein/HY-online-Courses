import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rokna/core/colors.dart';

class AppStyle {
  static TextStyle stlyle18Bold = TextStyle(
    fontSize: 18.sp, // Adjust size based on your design
    fontWeight: FontWeight.bold,
    color: AppColors.mainTextColor,
  );

  static TextStyle style15Semibold = TextStyle(
    fontSize: 15.sp, // Adjust size based on your design

    fontFamily: 'PlusJakartaSans',
  );

  static TextStyle style14Semibold = TextStyle(
    color: const Color(0xff01261C),
    fontSize: 12.sp,
    height: 0,
    fontFamily: "PlusJakartaSans",
    fontWeight: FontWeight.normal,
    letterSpacing: 0.56,
  );

  static TextStyle style30Semibold = TextStyle(
    fontSize: 30.sp,
    fontFamily: "PlusJakartaSans",
    color: AppColors.mainTextColor,
  );
}
