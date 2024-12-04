import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rokna/core/app_style.dart';
import 'package:rokna/core/widgets/CustomTextFormField.dart';
import 'package:rokna/features/register/presentation/screens/register_screen.dart';
import 'package:rokna/features/register/presentation/widgets/or_register_widget.dart';
import 'package:rokna/features/register/presentation/widgets/social_media.dart';

import '../../../../core/app_const.dart';
import '../../../../core/widgets/defult_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var passwordController = TextEditingController();
  var emailController = TextEditingController();
  bool passwordvisible = true;
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
              height: 138.h,
            ),
            Text(
              'Sign In ',
              style: AppStyle.style30Semibold,
            ),
            SizedBox(
              height: 6.h,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                  textAlign: TextAlign.center,
                  "Start your learning journey today!\nSign in to access courses.",
                  style: AppStyle.style16Semibold),
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
              height: 34.h,
            ),
            DefultAppButton(
              title: 'SIGN IN',
              onTap: () {},
            ),
            SizedBox(
              height: 34.h,
            ),
            const OrRegisterWidget(
              title: 'Or Sign In With',
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
                    text: 'Don’t Have an Account?   ',
                    style: AppStyle.style12regular,
                  ),
                  TextSpan(
                    text: 'Register Here',
                    style: AppStyle.style12regular.copyWith(
                      color: const Color(0xFF051926),
                      fontFamily: 'PlusJakartaSans',
                    ),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const RegisterScreen(),
                          ),
                        );
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
