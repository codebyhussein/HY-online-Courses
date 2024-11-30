import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rokna/core/app_style.dart';

class SocialMedia extends StatelessWidget {
  SocialMedia(
      {super.key,
      required this.title,
      required this.image,
      required this.bkContainer,
      required this.bkText});
  String title;
  void Function()? onTap;
  String image;
  Color bkContainer;
  Color bkText;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 317.w,
        height: 43.h,
        decoration: BoxDecoration(
            color: bkContainer,
            borderRadius: BorderRadius.circular(10.r),
            border: Border.all(
              color: const Color(0xffDEDEDE),
            )),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(image, height: 21.h, width: 21.w),
            SizedBox(
              width: 15.w,
            ),
            Text(
              title,
              style: AppStyle.style16Semibold.copyWith(color: bkText),
            )
          ],
        ),
      ),
    );
  }
}
