import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rokna/core/app_const.dart';
import 'package:rokna/core/app_style.dart';

import 'package:rokna/core/helper/extensions.dart';
import 'package:rokna/core/networking/routes.dart';
import 'package:rokna/core/widgets/CustomTextFormField.dart';
import 'package:rokna/core/widgets/defult_button.dart';

import 'package:rokna/features/register/presentation/widgets/or_register_widget.dart';
import 'package:rokna/features/register/presentation/widgets/social_media.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  var nameController = TextEditingController();

  var passwordController = TextEditingController();
  var confirmController = TextEditingController();

  var emailController = TextEditingController();

  var phoneController = TextEditingController();
  bool passwordvisible = true;
  bool confirmvisible = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 65.h,
            ),
            Text(
              'Register Now',
              style: AppStyle.style30Semibold,
            ),
            SizedBox(
              height: 6.h,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                  textAlign: TextAlign.center,
                  "Start your learning journey today!\nSign up to access courses.",
                  style: AppStyle.style16Semibold),
            ),
            SizedBox(
              height: 19.h,
            ),
            CustomTextFormField(
              hintText: 'Full Name',
              validateText: 'Enter Your Name',
              nameofController: nameController,
              keyBoredType: TextInputType.text,
              regEx: AppConst.namePattern,
              isvisble: false,
            ),
            SizedBox(
              height: 19.h,
            ),
            CustomTextFormField(
              hintText: 'Email Address',
              validateText: 'Enter Your Email Address',
              nameofController: emailController,
              keyBoredType: TextInputType.emailAddress,
              regEx: AppConst.emailPattern,
              isvisble: false,
            ),
            SizedBox(
              height: 19.h,
            ),
            CustomTextFormField(
              hintText: 'Phone Number',
              validateText: 'Enter Your Phone Number',
              nameofController: phoneController,
              keyBoredType: TextInputType.number,
              regEx: AppConst.phonePattern,
              isvisble: false,
            ),
            SizedBox(
              height: 19.h,
            ),
            CustomTextFormField(
              hintText: 'Password',
              validateText: 'Enter Your Password',
              nameofController: passwordController,
              keyBoredType: TextInputType.visiblePassword,
              isvisble: passwordvisible,
              regEx: AppConst.passwordPattern,
              suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      passwordvisible = !passwordvisible;
                    });
                  },
                  icon: passwordvisible
                      ? const Icon(Icons.visibility_off_outlined)
                      : const Icon(Icons.visibility)),
            ),
            SizedBox(
              height: 19.h,
            ),
            CustomTextFormField(
              hintText: 'Confirm Password',
              validateText: 'Repeat Password',
              nameofController: confirmController,
              keyBoredType: TextInputType.visiblePassword,
              regEx: AppConst.passwordPattern,
              isvisble: confirmvisible,
              suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      confirmvisible = !confirmvisible;
                    });
                  },
                  icon: confirmvisible
                      ? const Icon(Icons.visibility_off_outlined)
                      : const Icon(Icons.visibility)),
            ),
            SizedBox(
              height: 34.h,
            ),
            DefultAppButton(
              title: 'REGISTER',
              onTap: () {
                context.pushNamed(Routes.homeScreen);
              },
            ),
            SizedBox(
              height: 34.h,
            ),
            const OrRegisterWidget(
              title: 'Or Register With',
            ),
            SizedBox(
              height: 15.h,
            ),
            SocialMedia(
              title: 'Continue with Facebook',
              image: 'assets/images/Facebook Logo.png',
              bkContainer: const Color(0xFF1877F2),
              bkText: Colors.white,
            ),
            SizedBox(
              height: 19.h,
            ),
            SocialMedia(
              title: 'Continue with Google',
              image: 'assets/images/logo google.png',
              bkContainer: Colors.transparent,
              bkText: Colors.black.withOpacity(0.5400000214576721),
            ),
            SizedBox(
              height: 15.h,
            ),
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: 'Already have an account?  ',
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
          ],
        ),
      ),
    ));
  }
}
