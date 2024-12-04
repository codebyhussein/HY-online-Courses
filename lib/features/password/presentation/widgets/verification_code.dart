import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_verification_code/flutter_verification_code.dart';
import 'package:rokna/core/colors.dart';

class VerificationCodeWidget extends StatefulWidget {
  const VerificationCodeWidget({super.key});

  @override
  State<VerificationCodeWidget> createState() => _VerificationCodeWidgetState();
}

class _VerificationCodeWidgetState extends State<VerificationCodeWidget> {
  @override
  Widget build(BuildContext context) {
    return VerificationCode(
      itemSize: 60.h,
      margin: const EdgeInsets.symmetric(horizontal: 5),
      textStyle: TextStyle(fontSize: 20.sp, color: const Color(0xff858383)),
      keyboardType: TextInputType.number,
      underlineColor: AppColors.mainTextColor,
      length: 4,
      cursorColor: AppColors.mainTextColor,
      fullBorder: true,
      fillColor: AppColors.secondaryColor,
      onCompleted: (String value) {
        setState(() {
          //  _code = value;
        });
      },
      onEditing: (bool value) {
        setState(() {
          //   _onEditing = value;
        });
        //  if (!_onEditing) FocusScope.of(context).unfocus();
      },
    );
  }
}
