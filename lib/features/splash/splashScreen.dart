import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rokna/core/helper/extensions.dart';
import 'package:rokna/core/networking/routes.dart';
import 'package:rokna/features/onborading/presentation/screens/onborading_screen.dart';

import '../onborading/presentation/cubit/onboading_cubit.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    _goToNextPage();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            decoration: const BoxDecoration(color: Color(0xff091B29)),
            height: double.infinity,
            width: double.infinity,
            child: Center(child: Image.asset('assets/images/logo.png'))));
  }

  Future _goToNextPage() async {
    await Future.delayed(const Duration(seconds: 1), () {
      context.pushNamed(Routes.onBoardingScreen);
    });
  }
}
