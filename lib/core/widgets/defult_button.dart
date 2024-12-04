import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rokna/core/app_style.dart';

class DefultAppButton extends StatelessWidget {
  DefultAppButton({super.key, required this.onTap, required this.title});
  void Function() onTap;
  final String title;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: AppStyle.contanierDecorationSelected,
        height: 43.h,
        width: 317.w,
        child: Center(
          child: Text(
            title,
            style: AppStyle.style16Semibold.copyWith(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
