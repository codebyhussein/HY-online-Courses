import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rokna/core/app_style.dart';
import 'package:rokna/core/colors.dart';

class CustomTextFormField extends StatefulWidget {
  CustomTextFormField(
      {super.key,
      required this.hintText,
      this.labelText,
      required this.validateText,
      required this.nameofController,
      required this.keyBoredType,
      this.prefixIcon,
      this.suffixIcon,
      required this.regEx,
      required this.isvisble});
  String hintText;
  String? labelText;
  String validateText;
  TextEditingController nameofController;
  TextInputType keyBoredType;
  Widget? prefixIcon;
  Widget? suffixIcon;
  String regEx;
  bool isvisble = false;

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50.h,
      width: 317.w,
      child: TextFormField(
        controller: widget.nameofController,
        keyboardType: widget.keyBoredType,
        obscureText: widget.isvisble,
        decoration: InputDecoration(
            filled: true,
            fillColor: AppColors.secondaryColor,
            border: OutlineInputBorder(
                borderSide:
                    const BorderSide(color: Color(0xffDEDEDE), width: 0.42),
                borderRadius: BorderRadius.circular(10.r)),
            // prefixIconColor: Colors.black,
            prefixIcon: widget.prefixIcon,
            prefixIconColor: Colors.black,
            suffixIcon: widget.suffixIcon,
            hintText: widget.hintText,
            labelText: widget.labelText,
            constraints: const BoxConstraints.tightFor(),
            hintStyle: AppStyle.style16Semibold
                .copyWith(color: const Color(0xff858383)),
            suffixIconColor: const Color(0xff858383)),
        validator: (value) {
          return RegExp(widget.regEx).hasMatch(value!)
              ? null
              : widget.validateText;
        },
      ),
    );
  }
}
