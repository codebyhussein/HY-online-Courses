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
      fontSize: 13.sp, // Adjust size based on your design
      color: AppColors.mainTextColor,
      fontFamily: 'PlusJakartaSans',
      fontWeight: FontWeight.normal);

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
    fontWeight: FontWeight.w600,
    fontFamily: "PlusJakartaSans",
    color: AppColors.mainTextColor,
  );

  static Decoration contanierDecorationSelected = ShapeDecoration(
    color: const Color(0xFF022D4F),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
  );

  static Decoration contanierDecorationNotSelected = BoxDecoration(
      color: AppColors.kmainColor,
      borderRadius: BorderRadius.circular(5),
      border: Border.all(width: 2, color: const Color(0xff022D4F)));
}
