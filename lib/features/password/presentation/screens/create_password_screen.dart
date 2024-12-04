import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rokna/core/app_const.dart';
import 'package:rokna/core/app_style.dart';
import 'package:rokna/core/helper/extensions.dart';
import 'package:rokna/core/networking/routes.dart';
import 'package:rokna/core/widgets/CustomTextFormField.dart';
import 'package:rokna/core/widgets/defult_button.dart';
import 'package:rokna/features/password/presentation/widgets/custom_appbar.dart';

class CreatePasswordScreen extends StatefulWidget {
  const CreatePasswordScreen({super.key});

  @override
  State<CreatePasswordScreen> createState() => _CreatePasswordScreenState();
}

class _CreatePasswordScreenState extends State<CreatePasswordScreen> {
  var passwordController = TextEditingController();
  var confirmController = TextEditingController();
  bool passwordvisible = true;
  bool confirmvisible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: EdgeInsets.symmetric(horizontal: 34.w),
      child: Column(children: [
        const CustomAppbar(),
        Text(
          'Create New Password',
          textAlign: TextAlign.center,
          style: AppStyle.style30Semibold.copyWith(fontSize: 25.sp),
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
          height: 42.h,
        ),
        DefultAppButton(
            onTap: () {
              context.pushNamed(Routes.changePasswordScreen);
            },
            title: 'RESET PASSWORD'),
      ]),
    ));
  }
}
