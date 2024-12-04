import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 66.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                  height: 41.h,
                  width: 41.w,
                  decoration: ShapeDecoration(
                    color: const Color(0xFFF4F4F4),
                    shape: RoundedRectangleBorder(
                      side:
                          const BorderSide(width: 1, color: Color(0xFFDEDEDE)),
                      borderRadius: BorderRadius.circular(12.r),
                    ),
                  ),
                  child: Center(
                    child: SizedBox(
                      height: 21.h,
                      width: 12.w,
                      child: SvgPicture.asset(
                        'assets/images/back.svg',
                      ),
                    ),
                  )),
            ),
          ],
        ),
        SizedBox(
          height: 155.h,
        ),
      ],
    );
  }
}
