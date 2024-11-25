import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:iconly/iconly.dart';
import 'package:page_transition/page_transition.dart';
import 'package:rokna/core/app_style.dart';
import 'package:rokna/core/colors.dart';
import 'package:rokna/features/onborading/presentation/cubit/onboading_cubit.dart';
import 'package:rokna/features/onborading/presentation/screens/onborading_screen.dart';
import 'package:rokna/home_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: const BoxDecoration(color: Colors.white),
      height: double.infinity,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.only(left: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // DefultWidget.defultText(text: 'Welcome to'),
            SizedBox(height: 100.h),
            Text(
              'Welcome to\nYour Online Learning Hub!',
              style: AppStyle.stlyle18Bold,
            ),
            Text('Start Your Online Course Journey Today!',
                style: AppStyle.style15Semibold),
            SizedBox(height: 150.h),

            Center(
              child: Image.asset(
                'assets/images/logo.png',
              ),
            ),

            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                CircleAvatar(
                    radius: 30.r,
                    backgroundColor: AppColors.kmainColor,
                    child: IconButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => BlocProvider(
                                  create: (context) => OnboadingCubit(),
                                  child: const OnboardingScreen(),
                                ),
                              ));
                        },
                        icon: CircleAvatar(
                          radius: 30.r,
                          // backgroundColor:
                          //     const Color.fromARGB(255, 209, 209, 209),
                          backgroundColor: const Color(0xff92E3A9),
                          child: const Icon(
                            IconlyLight.arrow_right_2,
                            color: Colors.white,
                            size: 30,
                          ),
                        ))),
                SizedBox(
                  width: 10.w,
                ),
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
          ],
        ),
      ),
    ));
  }
}
