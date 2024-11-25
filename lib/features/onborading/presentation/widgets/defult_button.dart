import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rokna/core/app_style.dart';

class DefultButton extends StatelessWidget {
  DefultButton(
      {super.key,
      required this.onTap,
      required this.isSelected,
      required this.text});
  void Function()? onTap;
  bool isSelected = false;
  String text;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 144.w,
        height: 49.h,
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
        decoration: isSelected
            ? AppStyle.contanierDecorationSelected
            : AppStyle.contanierDecorationNotSelected,
        child: Center(
          child: Text(text,
              style: isSelected
                  ? AppStyle.style15Semibold.copyWith(color: Colors.white)
                  : AppStyle.style15Semibold),
        ),
      ),
    );
  }
}
