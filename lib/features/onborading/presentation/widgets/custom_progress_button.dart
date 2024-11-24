import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconly/iconly.dart';
import 'package:rokna/core/colors.dart';

import 'package:rokna/features/onborading/presentation/widgets/custom_paint.dart';

class AnimatedCircleAvatar extends StatelessWidget {
  AnimatedCircleAvatar({super.key, this.onTap, required this.tapCount});
  int tapCount;
  void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: onTap,
        child: Stack(alignment: Alignment.center, children: [
          CustomPaint(
            painter: ArcPainter(tapCount),
            child: CircleAvatar(
              radius: 45.r,
              backgroundColor: AppColors.kmainColor,
            ),
          ),
          CircleAvatar(
            radius: 45.r,
            backgroundColor: AppColors.kmainColor,
          ),
          CircleAvatar(
            radius: 35.r,
            backgroundColor: const Color(0xff022D4F),
            child: const Icon(
              IconlyLight.arrow_right_2,
              color: Colors.white,
              size: 45,
            ),
          ),
        ]),
      ),
    );
  }
}
