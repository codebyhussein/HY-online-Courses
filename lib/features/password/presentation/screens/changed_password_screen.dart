import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rokna/core/app_style.dart';
import 'package:rokna/core/helper/extensions.dart';
import 'package:rokna/core/networking/routes.dart';
import 'package:rokna/core/widgets/defult_button.dart';

class ChangedPasswordScreen extends StatelessWidget {
  const ChangedPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 34.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 219.h,
              ),
              Image.asset('assets/images/password.png'),
              SizedBox(
                height: 52.h,
              ),
              Text(
                'Password Changed',
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
                height: 52.h,
              ),
              DefultAppButton(
                  onTap: () {
                    context.pushNamed(Routes.loginScreen);
                  },
                  title: 'BACK TO SIGN IN')
            ],
          ),
        ),
      ),
    );
  }
}
