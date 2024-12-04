import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:rokna/core/networking/routes.dart';
import 'package:rokna/features/login/presentation/cubit/login_cubit.dart';
import 'package:rokna/features/login/presentation/screens/login_screen.dart';
import 'package:rokna/features/onborading/presentation/cubit/onboading_cubit.dart';
import 'package:rokna/features/onborading/presentation/screens/get_started_screen.dart';
import 'package:rokna/features/onborading/presentation/screens/onborading_screen.dart';
import 'package:rokna/features/password/presentation/cubit/password_cubit.dart';
import 'package:rokna/features/password/presentation/screens/changed_password_screen.dart';
import 'package:rokna/features/password/presentation/screens/create_password_screen.dart';
import 'package:rokna/features/password/presentation/screens/otp_verification_screen.dart';
import 'package:rokna/features/password/presentation/screens/reset_password_screen.dart';
import 'package:rokna/features/register/presentation/cubit/register_cubit.dart';
import 'package:rokna/features/register/presentation/screens/register_screen.dart';
import 'package:rokna/features/splash/splashScreen.dart';
import 'package:rokna/home_screen.dart';

class AppRouter {
  Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splashScreen:
        return MaterialPageRoute(
          builder: (context) => const SplashScreen(),
        );
      case Routes.onBoardingScreen:
        return MaterialPageRoute(
            builder: (context) => BlocProvider(
                  create: (context) => OnboadingCubit(),
                  child: const OnboardingScreen(),
                ));
      case Routes.getStartedScreen:
        return MaterialPageRoute(
            builder: (context) => BlocProvider(
                  create: (context) => OnboadingCubit(),
                  child: const GetStartedScreen(),
                ));
      case Routes.loginScreen:
        return MaterialPageRoute(
            builder: (context) => BlocProvider(
                  create: (context) => LoginCubit(),
                  child: const LoginScreen(),
                ));
      case Routes.registerScreen:
        return MaterialPageRoute(
            builder: (context) => BlocProvider(
                  create: (context) => RegisterCubit(),
                  child: const RegisterScreen(),
                ));
      case Routes.resetPasswordScreen:
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => PasswordCubit(),
            child: ResetPasswordScreen(),
          ),
        );
      case Routes.otpScreen:
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => PasswordCubit(),
            child: OtpVerificationScreen(),
          ),
        );
      case Routes.createPasswordScreen:
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => PasswordCubit(),
            child: const CreatePasswordScreen(),
          ),
        );
      case Routes.changePasswordScreen:
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => PasswordCubit(),
            child: const ChangedPasswordScreen(),
          ),
        );
      case Routes.homeScreen:
        return MaterialPageRoute(builder: (context) => const HomeScreen());
      default:
        return MaterialPageRoute(
          builder: (context) {
            return const Scaffold(
              body: Center(
                child: Text(
                    "Please enter a name for the route to generate the route"),
              ),
            );
          },
        );
    }
  }
}
