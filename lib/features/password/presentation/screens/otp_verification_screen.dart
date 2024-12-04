import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rokna/core/app_style.dart';
import 'package:rokna/core/helper/extensions.dart';
import 'package:rokna/core/networking/routes.dart';
import 'package:rokna/core/widgets/defult_button.dart';
import 'package:rokna/features/password/presentation/widgets/custom_appbar.dart';
import 'package:rokna/features/password/presentation/widgets/verification_code.dart';

class OtpVerificationScreen extends StatelessWidget {
  OtpVerificationScreen({super.key});
  var emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 34.w),
        child: Column(children: [
          const CustomAppbar(),
          Text(
            'Otp Verification',
            style: AppStyle.style30Semibold,
          ),
          SizedBox(
            height: 6.h,
          ),
          Text(
              textAlign: TextAlign.center,
              "Lorem ipsum dolor sit amet a aconsectetur.",
              style: AppStyle.style16Semibold),
          SizedBox(
            height: 42.h,
          ),
          const VerificationCodeWidget(),
          SizedBox(
            height: 65.h,
          ),
          DefultAppButton(
              onTap: () {
                context.pushNamed(Routes.createPasswordScreen);
              },
              title: 'VERIFY'),
          SizedBox(
            height: 42.h,
          ),
          Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: 'Didn’t Received Code?  ',
                  style: AppStyle.style12regular,
                ),
                TextSpan(
                  text: 'Resend',
                  style: AppStyle.style12regular.copyWith(
                    color: const Color(0xFF051926),
                    fontFamily: 'PlusJakartaSans',
                  ),
                  // recognizer: TapGestureRecognizer()
                  //   ..onTap = () {
                  //     Navigator.push(
                  //       context,
                  //       MaterialPageRoute(
                  //         builder: (context) => const LoginScreen(),
                  //       ),
                  //     );
                  //   },
                ),
              ],
            ),
          )
        ]),
      ),
    ));
  }
}
