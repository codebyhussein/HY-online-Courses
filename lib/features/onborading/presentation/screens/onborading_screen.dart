import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconly/iconly.dart';
import 'package:rokna/core/colors.dart';
import 'package:rokna/features/onborading/data/onborading_data.dart';
import 'package:rokna/features/onborading/presentation/cubit/onboading_cubit.dart';
import 'package:rokna/features/onborading/presentation/screens/onboarding_content.dart';
import 'package:rokna/features/onborading/presentation/widgets/custom_progress_button.dart';
import 'package:rokna/features/onborading/presentation/widgets/skip_button.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  late PageController _controller;

  int currentPage = 0;
  @override
  void initState() {
    super.initState();
    _controller = PageController();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<OnboadingCubit, OnboadingState>(
        listener: (context, state) {},
        builder: (context, state) {
          final cubit = BlocProvider.of<OnboadingCubit>(context);

          return Column(
            children: [
              SizedBox(height: 50.h),
              SkipButton(
                onPressed: () {
                  cubit.goToLastPage(
                    controller: _controller,
                  );
                },
              ),
              SizedBox(height: 20.h),
              Expanded(
                child: PageView.builder(
                  controller: _controller,
                  itemCount: OnboradingData.pages.length,
                  onPageChanged: (index) {
                    setState(() {
                      currentPage = index;
                    });
                  },
                  itemBuilder: (context, index) {
                    return OnboardingContent(
                      page: OnboradingData.pages[index],
                    );
                  },
                ),
              ),
              Container(
                color: AppColors.kmainColor,
                height: 105.h,
                width: 105.w,
                child: AnimatedCircleAvatar(
                  tapCount: currentPage + 1,
                  onTap: () {
                    // setState(() {
                    //   currentPage++;
                    // });

                    cubit.goToNextPage(
                      controller: _controller,
                    );
                  },
                ),
              ),
              SizedBox(height: 70.h),
            ],
          );
        },
      ),
    );
  }
}
