import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rokna/core/app_style.dart';

class OrRegisterWidget extends StatelessWidget {
  const OrRegisterWidget({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 312.w,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Expanded(
            child: Divider(
              thickness: 3,
              color: Color(0xffDEDEDE),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: 8.0), // Add some spacing around the text
            child: Text(
              title,
              style: AppStyle.style14Semibold,
            ),
          ),
          const Expanded(
            child: Divider(
              thickness: 3,
              endIndent: 1,
              color: Color(0xffDEDEDE),
            ),
          ),
        ],
      ),
    );
  }
}
