import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rokna/core/helper/extensions.dart';
import 'package:rokna/core/networking/routes.dart';
import 'package:rokna/features/login/presentation/cubit/login_cubit.dart';
import 'package:rokna/features/login/presentation/screens/login_screen.dart';
import 'package:rokna/features/onborading/presentation/cubit/onboading_cubit.dart';
import 'package:rokna/features/onborading/presentation/widgets/defult_button.dart';
import 'package:rokna/features/register/presentation/cubit/register_cubit.dart';
import 'package:rokna/features/register/presentation/screens/register_screen.dart';

import '../../../../core/app_style.dart';

class GetStartedScreen extends StatefulWidget {
  const GetStartedScreen({super.key});

  @override
  State<GetStartedScreen> createState() => _GetStartedScreenState();
}

class _GetStartedScreenState extends State<GetStartedScreen> {
  final title = 'Join the Smart Desk Community';
  final description =
      'Enhance your skills and knowledge with expert-led courses available anytime, anywhere.';
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => OnboadingCubit(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 125.h,
            ),
            Image.asset(
                height: 287.4.h,
                width: 217.41.h,
                'assets/images/get_started.png'),
            SizedBox(height: 20.h),
            Text(title,
                textAlign: TextAlign.center, style: AppStyle.style30Semibold),
            SizedBox(height: 10.h),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(description,
                  textAlign: TextAlign.center, style: AppStyle.style16Semibold),
            ),
            SizedBox(height: 60.h),
            BlocBuilder<OnboadingCubit, OnboadingState>(
              builder: (context, state) {
                final cubit = BlocProvider.of<OnboadingCubit>(context);

                bool isSelected = false;
                if (state is IsselectedButton) {
                  isSelected = state.isSelected;
                }

                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      DefultButton(
                        onTap: () {
                          cubit.toggleSelection(isSelected);
                          context.pushNamed(Routes.loginScreen);
                        },
                        text: 'SIGN IN',
                        isSelected: !isSelected,
                      ),
                      DefultButton(
                        onTap: () {
                          cubit.toggleSelection(isSelected);
                          context.pushNamed(Routes.registerScreen);
                        },
                        text: 'REGISTER',
                        isSelected: isSelected,
                      ),
                    ],
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
