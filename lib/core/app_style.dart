import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rokna/core/colors.dart';

class AppStyle {
  static TextStyle stlyle18Bold = TextStyle(
    fontSize: 18.sp, // Adjust size based on your design
    fontWeight: FontWeight.bold,
    fontFamily: 'PlusJakartaSans',
    color: AppColors.mainTextColor,
  );

  static TextStyle style16Semibold = TextStyle(
      fontSize: 14.sp, // Adjust size based on your design
      color: AppColors.mainTextColor,
      fontFamily: 'PlusJakartaSans Regular',
      fontWeight: FontWeight.normal);

  static TextStyle style14Semibold = TextStyle(
    color: const Color(0xff01261C),
    fontSize: 13.sp,
    height: 0,
    fontFamily: "PlusJakartaSans Regular",
    letterSpacing: 0.56,
  );

  static TextStyle style30Semibold = TextStyle(
    fontSize: 33.sp,
    fontWeight: FontWeight.bold,
    fontFamily: "PlusJakartaSans",
    color: AppColors.mainTextColor,
  );
  static TextStyle style12regular = TextStyle(
    color: Colors.black.withOpacity(0.5400000214576721),
    fontSize: 12.sp,
    fontFamily: 'PlusJakartaSans Regular',
    fontWeight: FontWeight.w400,
    height: 0,
    letterSpacing: 0.48,
  );

  static Decoration contanierDecorationSelected = ShapeDecoration(
    color: const Color(0xFF022D4F),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.r)),
  );

  static Decoration contanierDecorationNotSelected = BoxDecoration(
      color: AppColors.kmainColor,
      borderRadius: BorderRadius.circular(10.r),
      border: Border.all(width: 2, color: const Color(0xff022D4F)));
}
