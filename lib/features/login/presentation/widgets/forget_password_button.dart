import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ForgetPasswordButton extends StatelessWidget {
  ForgetPasswordButton({super.key, required this.onTap});
  void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 38.w),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              'Forget Password?',
              style: TextStyle(
                color: Color(0xFF858383),
                fontSize: 13,
                fontFamily: 'Plus Jakarta Sans',
                fontWeight: FontWeight.w500,
                height: 0,
                letterSpacing: 0.52,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
