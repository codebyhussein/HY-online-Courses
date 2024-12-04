import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rokna/core/app_const.dart';
import 'package:rokna/core/app_style.dart';
import 'package:rokna/core/helper/extensions.dart';
import 'package:rokna/core/networking/routes.dart';
import 'package:rokna/core/widgets/CustomTextFormField.dart';
import 'package:rokna/core/widgets/defult_button.dart';

import 'package:rokna/features/password/presentation/widgets/custom_appbar.dart';

class ResetPasswordScreen extends StatelessWidget {
  ResetPasswordScreen({super.key});
  var emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: EdgeInsets.symmetric(horizontal: 34.w),
      child: Column(children: [
        const CustomAppbar(),
        Text(
          'Reset Password',
          style: AppStyle.style30Semibold,
        ),
        SizedBox(
          height: 6.h,
        ),
        Text(
            textAlign: TextAlign.center,
            "Lorem ipsum dolor sit amet a aconsectetur",
            style: AppStyle.style16Semibold),
        SizedBox(
          height: 42.h,
        ),
        CustomTextFormField(
          hintText: 'Enter Your Email Address',
          validateText: 'Enter Your Email Address',
          nameofController: emailController,
          keyBoredType: TextInputType.emailAddress,
          regEx: AppConst.emailPattern,
          isvisble: false,
        ),
        SizedBox(
          height: 42.h,
        ),
        DefultAppButton(
            onTap: () {
              context.pushNamed(Routes.otpScreen);
            },
            title: 'SEND CODE'),
        SizedBox(
          height: 42.h,
        ),
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: 'Remember Password ?  ',
                style: AppStyle.style12regular,
              ),
              TextSpan(
                text: 'Sign In Here',
                style: AppStyle.style12regular.copyWith(
                  color: const Color(0xFF051926),
                  fontFamily: 'PlusJakartaSans',
                ),
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    context.pushNamed(Routes.loginScreen);
                  },
              ),
            ],
          ),
        )
      ]),
    ));
  }
}
